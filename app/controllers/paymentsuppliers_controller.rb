class PaymentsuppliersController < ApplicationController
  before_action :set_paymentsupplier, only: [:show, :edit, :update, :destroy]

  # GET /paymentsuppliers
  # GET /paymentsuppliers.json
  def index
    @paymentsuppliers = Paymentsupplier.all
  end

  # GET /paymentsuppliers/1
  # GET /paymentsuppliers/1.json
  def show
  end

  # GET /paymentsuppliers/new
  def new
    @paymentsupplier = Paymentsupplier.new
  end

  # GET /paymentsuppliers/1/edit
  def edit
  end

  # POST /paymentsuppliers
  # POST /paymentsuppliers.json
  def create
    @paymentsupplier = Paymentsupplier.new(paymentsupplier_params)

    respond_to do |format|
      if @paymentsupplier.save
        format.html { redirect_to @paymentsupplier, notice: 'Paymentsupplier was successfully created.' }
        format.json { render :show, status: :created, location: @paymentsupplier }
      else
        format.html { render :new }
        format.json { render json: @paymentsupplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymentsuppliers/1
  # PATCH/PUT /paymentsuppliers/1.json
  def update
    respond_to do |format|
      if @paymentsupplier.update(paymentsupplier_params)
        format.html { redirect_to @paymentsupplier, notice: 'Paymentsupplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymentsupplier }
      else
        format.html { render :edit }
        format.json { render json: @paymentsupplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymentsuppliers/1
  # DELETE /paymentsuppliers/1.json
  def destroy
    @paymentsupplier.destroy
    respond_to do |format|
      format.html { redirect_to paymentsuppliers_url, notice: 'Paymentsupplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymentsupplier
      @paymentsupplier = Paymentsupplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymentsupplier_params
      params.require(:paymentsupplier).permit(:paymentNote, :paymentValue)
    end
end
