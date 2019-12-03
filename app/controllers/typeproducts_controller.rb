class TypeproductsController < ApplicationController
  before_action :set_typeproduct, only: [:show, :edit, :update, :destroy]

  # GET /typeproducts
  # GET /typeproducts.json
  def index
    @typeproducts = Typeproduct.all
  end

  # GET /typeproducts/1
  # GET /typeproducts/1.json
  def show
  end

  # GET /typeproducts/new
  def new
    @typeproduct = Typeproduct.new
  end

  # GET /typeproducts/1/edit
  def edit
  end

  # POST /typeproducts
  # POST /typeproducts.json
  def create
    @typeproduct = Typeproduct.new(typeproduct_params)

    respond_to do |format|
      if @typeproduct.save
        format.html { redirect_to @typeproduct, notice: 'Typeproduct was successfully created.' }
        format.json { render :show, status: :created, location: @typeproduct }
      else
        format.html { render :new }
        format.json { render json: @typeproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeproducts/1
  # PATCH/PUT /typeproducts/1.json
  def update
    respond_to do |format|
      if @typeproduct.update(typeproduct_params)
        format.html { redirect_to @typeproduct, notice: 'Typeproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeproduct }
      else
        format.html { render :edit }
        format.json { render json: @typeproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeproducts/1
  # DELETE /typeproducts/1.json
  def destroy
    @typeproduct.destroy
    respond_to do |format|
      format.html { redirect_to typeproducts_url, notice: 'Typeproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeproduct
      @typeproduct = Typeproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeproduct_params
      params.require(:typeproduct).permit(:line)
    end
end
