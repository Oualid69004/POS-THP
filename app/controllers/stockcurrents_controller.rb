class StockcurrentsController < ApplicationController
  before_action :set_stockcurrent, only: [:show, :edit, :update, :destroy]

  # GET /stockcurrents
  # GET /stockcurrents.json
  def index
    @stockcurrents = Stockcurrent.all
  end

  # GET /stockcurrents/1
  # GET /stockcurrents/1.json
  def show
  end

  # GET /stockcurrents/new
  def new
    @stockcurrent = Stockcurrent.new
  end

  # GET /stockcurrents/1/edit
  def edit
  end

  # POST /stockcurrents
  # POST /stockcurrents.json
  def create
    @stockcurrent = Stockcurrent.new(stockcurrent_params)

    respond_to do |format|
      if @stockcurrent.save
        format.html { redirect_to @stockcurrent, notice: 'Stockcurrent was successfully created.' }
        format.json { render :show, status: :created, location: @stockcurrent }
      else
        format.html { render :new }
        format.json { render json: @stockcurrent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stockcurrents/1
  # PATCH/PUT /stockcurrents/1.json
  def update
    respond_to do |format|
      if @stockcurrent.update(stockcurrent_params)
        format.html { redirect_to @stockcurrent, notice: 'Stockcurrent was successfully updated.' }
        format.json { render :show, status: :ok, location: @stockcurrent }
      else
        format.html { render :edit }
        format.json { render json: @stockcurrent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stockcurrents/1
  # DELETE /stockcurrents/1.json
  def destroy
    @stockcurrent.destroy
    respond_to do |format|
      format.html { redirect_to stockcurrents_url, notice: 'Stockcurrent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockcurrent
      @stockcurrent = Stockcurrent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stockcurrent_params
      params.require(:stockcurrent).permit(:idstockcurrent, :cost, :total, :units)
    end
end
