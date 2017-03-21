class CartsController < InheritedResources::Base

	def create
		p '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
		p params 
		p '=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
		@cart = Cart.new(cart_params)
		@cart.user_id = current_user.id
		@cart.save
		redirect_to :back
	end

  private

    def cart_params
      params.require(:cart).permit(:user_id, :cafe_id)
    end
end

# params = {
# 	:cart => {
# 		:user_id => 2,
# 		:cafe_id => 4
# 	}
# }

