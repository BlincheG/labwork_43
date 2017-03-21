class CartItemsController < InheritedResources::Base

		def create
			@cart_item = CartItem.new(cart_item_params)

	    if @cart_item.save
	      redirect_to :back
	    else
	      render 'new'
	    end
		end

  private

    def cart_item_params
      params.require(:cart_item).permit(:name, :count, :cart_id, :price, :food_id)
    end
end

