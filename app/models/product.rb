class Product < ApplicationRecord
  has_many :reviews

  def feed
    Review.where("product_id = ?", id)
  end

end
