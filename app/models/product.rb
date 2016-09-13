class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images

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
    images.first.url
  end
end
