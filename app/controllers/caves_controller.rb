class CavesController < ApplicationController
  def index
    @caves = Cafe.all
  end

  def show
  	@cafe = Cafe.find(params[:id])
  end

  def update
    @cafe = Cafe.find(params[:id])

    if @cafe.update(cafe_params)
      redirect_to @cafe
    else
      render 'edit'
    end
  end

  def destroy
    @cafe = Cafe.find(params[:id])
    @cafe.destroy

    redirect_to @cafe
  end

  private

  def cafe_params
    params.require(:cafe).permit(:name, :desc, :image)
  end
end
