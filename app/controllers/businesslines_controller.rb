class BusinesslinesController < ApplicationController
  before_action :set_businessline, only: [:show, :edit, :update, :destroy]

  # GET /businesslines
  # GET /businesslines.json
  def index
    @businesslines = Businessline.all
  end

  # GET /businesslines/1
  # GET /businesslines/1.json
  def show
  end

  # GET /businesslines/new
  def new
    @businessline = Businessline.new
  end

  # GET /businesslines/1/edit
  def edit
  end

  # POST /businesslines
  # POST /businesslines.json
  def create
    @businessline = Businessline.new(businessline_params)

    respond_to do |format|
      if @businessline.save
        format.html { redirect_to @businessline, notice: 'Businessline was successfully created.' }
        format.json { render :show, status: :created, location: @businessline }
      else
        format.html { render :new }
        format.json { render json: @businessline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesslines/1
  # PATCH/PUT /businesslines/1.json
  def update
    respond_to do |format|
      if @businessline.update(businessline_params)
        format.html { redirect_to @businessline, notice: 'Businessline was successfully updated.' }
        format.json { render :show, status: :ok, location: @businessline }
      else
        format.html { render :edit }
        format.json { render json: @businessline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesslines/1
  # DELETE /businesslines/1.json
  def destroy
    @businessline.destroy
    respond_to do |format|
      format.html { redirect_to businesslines_url, notice: 'Businessline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businessline
      @businessline = Businessline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businessline_params
      params.require(:businessline).permit(:name, :description)
    end
end
