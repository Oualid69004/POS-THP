class PurshasController < ApplicationController
  before_action -> { as_access?("Purshas") }

  def index
    @categories = Company.last.categories.all
    @memory = current_user.memory
    @globalprice = 0
    current_user.memory.ticketlines.each do |ticketline|
      @globalprice += ticketline.product.pricebuy.to_i * ticketline.units.to_i
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
    @already_here = false
    current_user.memory.ticketlines.each do |ticketline|
      if ticketline.product.name == @product.name
        @already_here = true
        ticketline.update(units: ticketline.units + 1)
      end
    end
    @already_here == false ? Ticketline.create(memory: current_user.memory, product: @product) : 0
    respond_to do |format|
      format.html { redirect_to purshas_path}
      format.js {}
    end
  end
end
