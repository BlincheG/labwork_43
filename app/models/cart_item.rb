class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food

  def total_price
  	self.count + self.price
  end
end
