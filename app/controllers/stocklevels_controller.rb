class StocklevelsController < ApplicationController
  before_action :set_stocklevel, only: [:show, :edit, :update, :destroy]

  # GET /stocklevels
  # GET /stocklevels.json
  def index
    @stocklevels = Stocklevel.all
  end

  # GET /stocklevels/1
  # GET /stocklevels/1.json
  def show
  end

  # GET /stocklevels/new
  def new
    @stocklevel = Stocklevel.new
  end

  # GET /stocklevels/1/edit
  def edit
  end

  # POST /stocklevels
  # POST /stocklevels.json
  def create
    @stocklevel = Stocklevel.new(stocklevel_params)

    respond_to do |format|
      if @stocklevel.save
        format.html { redirect_to @stocklevel, notice: 'Stocklevel was successfully created.' }
        format.json { render :show, status: :created, location: @stocklevel }
      else
        format.html { render :new }
        format.json { render json: @stocklevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stocklevels/1
  # PATCH/PUT /stocklevels/1.json
  def update
    respond_to do |format|
      if @stocklevel.update(stocklevel_params)
        format.html { redirect_to @stocklevel, notice: 'Stocklevel was successfully updated.' }
        format.json { render :show, status: :ok, location: @stocklevel }
      else
        format.html { render :edit }
        format.json { render json: @stocklevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stocklevels/1
  # DELETE /stocklevels/1.json
  def destroy
    @stocklevel.destroy
    respond_to do |format|
      format.html { redirect_to stocklevels_url, notice: 'Stocklevel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stocklevel
      @stocklevel = Stocklevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stocklevel_params
      params.require(:stocklevel).permit(:location, :stockmaximum, :stocksecurity)
    end
end
