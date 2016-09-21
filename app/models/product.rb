class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  def discounted?
    price.to_f < 100
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end

  def top_image
    first_image = images.first
    if first_image
      images.first.url
    else
      "http://www.nerdtothethirdpower.com/wp-content/uploads/2015/02/Slider_Placeholder-620x270.png"
    end
  end
end
