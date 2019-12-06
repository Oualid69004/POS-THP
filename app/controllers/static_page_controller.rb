class StaticPageController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @stock_value = 0
    pricesell = 0
    @finance_capital = current_user.company.capital
    current_user.company.stockcurrent.products.each do |product|
      @stock_value += product.pricebuy.to_i
      pricesell += product.pricesell.to_i
    end
    @margin = pricesell - @stock_value
  end

  def new
    @businesslines = Businessline.all
    @roles = Role.all
  end

  def create
    company = Company.create(name: params[:company], businessline: Businessline.find(params[:businessline]))
    current_user.update(company: company, role: Role.find(params[:role]))
    redirect_to root_path
  end
end
