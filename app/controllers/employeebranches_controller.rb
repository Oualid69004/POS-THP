class EmployeebranchesController < ApplicationController
  before_action :set_employeebranch, only: [:show, :edit, :update, :destroy]

  # GET /employeebranches
  # GET /employeebranches.json
  def index
    @employeebranches = Employeebranch.all
  end

  # GET /employeebranches/1
  # GET /employeebranches/1.json
  def show
  end

  # GET /employeebranches/new
  def new
    @employeebranch = Employeebranch.new
  end

  # GET /employeebranches/1/edit
  def edit
  end

  # POST /employeebranches
  # POST /employeebranches.json
  def create
    @employeebranch = Employeebranch.new(employeebranch_params)

    respond_to do |format|
      if @employeebranch.save
        format.html { redirect_to @employeebranch, notice: 'Employeebranch was successfully created.' }
        format.json { render :show, status: :created, location: @employeebranch }
      else
        format.html { render :new }
        format.json { render json: @employeebranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeebranches/1
  # PATCH/PUT /employeebranches/1.json
  def update
    respond_to do |format|
      if @employeebranch.update(employeebranch_params)
        format.html { redirect_to @employeebranch, notice: 'Employeebranch was successfully updated.' }
        format.json { render :show, status: :ok, location: @employeebranch }
      else
        format.html { render :edit }
        format.json { render json: @employeebranch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeebranches/1
  # DELETE /employeebranches/1.json
  def destroy
    @employeebranch.destroy
    respond_to do |format|
      format.html { redirect_to employeebranches_url, notice: 'Employeebranch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeebranch
      @employeebranch = Employeebranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employeebranch_params
      params.fetch(:employeebranch, {})
    end
end
