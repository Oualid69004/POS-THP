class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = current_user.company.users.all
    @roles = Role.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: '123456',
      company: current_user.company,
      role: Role.find(params[:role])
    )
    if @user.save
      flash[:success] = 'A new employee was add to your company'
      UserMailer.welcome_employee(@user, current_user).deliver_now
      redirect_to employees_path
    else
      redirect_to employees_path
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee = User.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
    end
end
