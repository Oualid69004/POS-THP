class StaticPageController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @stock = current_user.company.stockcurrent
    @stock_value = 0
    pricesell = 0
    @stock_volume = 0
    @finance_capital = current_user.company.capital
    @stock.products.each do |product|
      @stock_value += product.pricebuy.to_i * product.stockvolume.to_i
      pricesell += product.pricesell.to_i * product.stockvolume.to_i
      @stock_volume += product.stockvolume.to_i
    end
    @stock_percent = @stock_volume.to_f / (@stock.stockmax.to_f - @stock.stockmin.to_f) * 100
    @margin = pricesell - @stock_value
    @receipt = current_user.company.receipts.last.value
  end

  def new
    @businesslines = Businessline.all
    @roles = Role.all
  end

  def create
    company = Company.create(name: params[:company], businessline: Businessline.find(params[:businessline]))
    stock = Stockcurrent.create(company: company)
    company.update(stockcurrent: stock)
    current_user.update(company: company, role: Role.find(params[:role]))
    flash[:success] = 'Welcome to PosTHP'
    redirect_to root_path
  end
end
