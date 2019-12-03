class StockinsController < ApplicationController
  before_action :set_stockin, only: [:show, :edit, :update, :destroy]

  # GET /stockins
  # GET /stockins.json
  def index
    @stockins = Stockin.all
  end

  # GET /stockins/1
  # GET /stockins/1.json
  def show
  end

  # GET /stockins/new
  def new
    @stockin = Stockin.new
  end

  # GET /stockins/1/edit
  def edit
  end

  # POST /stockins
  # POST /stockins.json
  def create
    @stockin = Stockin.new(stockin_params)

    respond_to do |format|
      if @stockin.save
        format.html { redirect_to @stockin, notice: 'Stockin was successfully created.' }
        format.json { render :show, status: :created, location: @stockin }
      else
        format.html { render :new }
        format.json { render json: @stockin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stockins/1
  # PATCH/PUT /stockins/1.json
  def update
    respond_to do |format|
      if @stockin.update(stockin_params)
        format.html { redirect_to @stockin, notice: 'Stockin was successfully updated.' }
        format.json { render :show, status: :ok, location: @stockin }
      else
        format.html { render :edit }
        format.json { render json: @stockin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stockins/1
  # DELETE /stockins/1.json
  def destroy
    @stockin.destroy
    respond_to do |format|
      format.html { redirect_to stockins_url, notice: 'Stockin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockin
      @stockin = Stockin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stockin_params
      params.require(:stockin).permit(:total)
    end
end
