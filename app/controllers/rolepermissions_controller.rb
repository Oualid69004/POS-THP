class RolepermissionsController < ApplicationController
  before_action :set_rolepermission, only: [:show, :edit, :update, :destroy]

  # GET /rolepermissions
  # GET /rolepermissions.json
  def index
    @rolepermissions = Rolepermission.all
  end

  # GET /rolepermissions/1
  # GET /rolepermissions/1.json
  def show
  end

  # GET /rolepermissions/new
  def new
    @roles = Role.all
    @screens = Screen.all
    @rolepermission = Rolepermission.new
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  # GET /rolepermissions/1/edit
  def edit
  end

  # POST /rolepermissions
  # POST /rolepermissions.json
  def create
    @screens = Screen.all
    @roles = Role.all
    params[:screens].each do |screen|
    unless screen == nil
      screenId = screen[1...-1].to_i
      roleId = screen[1...-1].last.to_i
      select_screen = Screen.find(screenId)
      select_role = Role.find(roleId)
        unless select_role.screens.include?(select_screen)
          Rolepermission.create(role: select_role, screen: select_screen)
        end
      end
    end
    redirect_to root_path, notice: 'Les permissions ont bien été prises en compte.'
  #  respond_to do |format|
  #    if @rolepermission.save
  #      format.html { redirect_to @rolepermission, notice: 'Rolepermission was successfully created.' }
  #      format.json { render :show, status: :created, location: @rolepermission }
  #    else
  #      format.html { render :new }
  #      format.json { render json: @rolepermission.errors, status: :unprocessable_entity }
  #    end
  #  end
  end

  # PATCH/PUT /rolepermissions/1
  # PATCH/PUT /rolepermissions/1.json
  def update
    respond_to do |format|
      if @rolepermission.update(rolepermission_params)
        format.html { redirect_to @rolepermission, notice: 'Rolepermission was successfully updated.' }
        format.json { render :show, status: :ok, location: @rolepermission }
      else
        format.html { render :edit }
        format.json { render json: @rolepermission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rolepermissions/1
  # DELETE /rolepermissions/1.json
  def destroy
    @rolepermission.destroy
    respond_to do |format|
      format.html { redirect_to rolepermissions_url, notice: 'Rolepermission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rolepermission
      @rolepermission = Rolepermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rolepermission_params
      params.fetch(:rolepermission, {})
    end
end
