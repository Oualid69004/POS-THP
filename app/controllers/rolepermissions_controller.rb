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
  end

  # GET /rolepermissions/1/edit
  def edit
  end

  # POST /rolepermissions
  # POST /rolepermissions.json
  def create
    role = Role.find(params[:role])
    @screens = Screen.all
    params[:screens].each do |screen|
      unless screen == nil
        select_screen = Screen.find(screen)
        unless role.screens.include?(select_screen)
          Rolepermission.create(role: role, screen: select_screen)
        end
      end
    end
    redirect_to root_path
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
