class SalesController < ApplicationController
  before_action -> { as_access?("Sales") }

  def index
    @categories = current_user.company.categories.all
    @memory = current_user.memory
    @globalprice = 0
    current_user.memory.ticketlines.each do |ticketline|
      @globalprice += ticketline.product.pricesell.to_i * ticketline.units.to_i
    end
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
