class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]
  before_action -> { as_access?("Suppliers") }


  # GET /suppliers
  # GET /suppliers.json
  def index
    @suppliers = Supplier.all
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
    @suppliers = Supplier.all
  end

  # GET /suppliers/new
  def new
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit

    @suppliers = Supplier.all

  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    @supplier = Supplier.new(
      name: params[:name],
      adress: params[:adress],
      email: params[:email],
      mobile: params[:mobile],
    )
    if @supplier.save
      flash[:success] = "A supplier was created !"
      redirect_to suppliers_path
    else
      flash[:error] = @supplier.errors.full_message.to_sentence
      redirect_to suppliers_path
    end
  end


  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update

       @supplier.update(supplier_params)
       redirect_to suppliers_path

  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
      params.require(:supplier).permit(:name, :adress, :email, :mobile)
    end
end
