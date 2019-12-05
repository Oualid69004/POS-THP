class PurshasController < ApplicationController

  def index
    @categories = current_user.company.categories.all
  end

  def new
    @categories = current_user.company.categories.all
    @category = Category.find(params[:category_id])
    respond_to do |format|
      format.html { redirect_to new_pursha_path}
      format.js {}
    end
  end

  def create
    @product = Product.find(params[:product_id])
    respond_to do |format|
      format.html { redirect_to purshas_path}
      format.js {}
    end
  end
end
