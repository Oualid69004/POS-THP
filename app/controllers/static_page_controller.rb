class StaticPageController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
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
