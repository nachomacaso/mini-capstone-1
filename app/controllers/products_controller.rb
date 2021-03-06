class ProductsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @products = Product.all.includes(:images)
    sort_attribute = params[:sort] 
    sort_order = params[:sort_order]
    discount_level = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

    if category
      @products = Category.find_by(name: category).products
    end

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @products = @products.where("name ILIKE ? OR description ILIKE ?", fuzzy_search_term, fuzzy_search_term)
    end

    if discount_level
      @products = @products.where("price < ?", discount_level)
    end

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier][:supplier_id]
      )

    if @product.save
      Image.create(url: params[:image], product_id: @product.id) if params[:image]
      Image.create(url: params[:image_2], product_id: @product.id) if params[:image_2]

      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
      @product = Product.find_by(id: params[:id])
      @categories = @product.categories
      @supplier = @product.supplier
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end

  def random
    random_product = Product.all.sample
    redirect_to "/products/#{random_product.id}"
  end
end

