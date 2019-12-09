class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  # GET /products
  # GET /products.json
  def index
    @products = current_user.company.stockcurrent.products
    @categories =Category.all
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
  end
  # GET /products/new
  def new
    @product = Product.new
  end
  # GET /products/1/edit
  def edit
    
  end
  # POST /products
  # POST /products.json
  def create
    Product.create(

      name: params[:name],
      pricesell: params[:pricesell],
      pricebuy: params[:pricebuy],
      stockvolume: params[:stockvolume],
      reference: params[:reference]
   #   category: Category.find(params[:category]),
      #ticketline: Ticketline.find(params[:ticketline])
    )
        redirect_to products_path

  end
  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
   
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product

   # @product = Product.find(params[:id])

    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params

      #params.require(:product).permit(:name, :pricesell, :pricebuy, :stockvolume, :reference, :stockcost)

    end

  end