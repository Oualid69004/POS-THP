class PurshasController < ApplicationController
  def index
    @categories = Company.last.categories.all
    @memory = current_user.memory
    @globalprice = 0
    current_user.memory.products.each do |product|
      @globalprice += product.pricebuy.to_i
    end
  end

  def new
    @categories = Company.last.categories.all
    @category = Category.find(params[:category_id])
    respond_to do |format|
      format.html { redirect_to new_pursha_path}
      format.js {}
    end
  end

  def create
    @product = Product.find(params[:product_id])
    Ticketline.create(memory: current_user.memory, product: @product)
    respond_to do |format|
      format.html { redirect_to purshas_path}
      format.js {}
    end
  end
end
