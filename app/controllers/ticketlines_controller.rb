class TicketlinesController < ApplicationController
  before_action :set_ticketline, only: [:show, :edit, :update, :destroy]

  # GET /ticketlines
  # GET /ticketlines.json
  def index
    @ticketlines = Ticketline.all
  end

  # GET /ticketlines/1
  # GET /ticketlines/1.json
  def show
  end

  # GET /ticketlines/new
  def new
    @ticketline = Ticketline.new
  end

  # GET /ticketlines/1/edit
  def edit
  end

  # POST /ticketlines
  # POST /ticketlines.json
  def create
    @ticketline = Ticketline.new(ticketline_params)

    respond_to do |format|
      if @ticketline.save
        format.html { redirect_to @ticketline, notice: 'Ticketline was successfully created.' }
        format.json { render :show, status: :created, location: @ticketline }
      else
        format.html { render :new }
        format.json { render json: @ticketline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticketlines/1
  # PATCH/PUT /ticketlines/1.json
  def update
    if params[:id] == '1'
      @ticket = Ticket.create(company: current_user.company)
      current_user.memory.ticketlines.each do |ticketline|
        category = current_user.company.categories.where(name: ticketline.product.category.name).first
        Product.create(name: ticketline.product.name, category: category, stockcurrent: current_user.company.stockcurrent, pricebuy: ticketline.product.pricebuy, pricesell: ticketline.product.pricesell.to_i+1)
        ticketline.update(ticket: @ticket, memory: nil)
        current_user.company.update(capital: (current_user.company.capital -= ticketline.product.pricebuy.to_i))
      end
      redirect_to purshas_path
    else
      @ticket = Ticket.create(company: current_user.company)
      current_user.memory.ticketlines.each do |ticketline|
        current_user.company.stockcurrent.products.find(ticketline.product.id).destroy
        ticketline.update(ticket: @ticket, memory: nil)
        current_user.company.update(capital: (current_user.company.capital += ticketline.product.pricesell.to_i))
      end
      redirect_to sales_path
    end
  end

  # DELETE /ticketlines/1
  # DELETE /ticketlines/1.json
  def destroy
    @ticketline.destroy
    respond_to do |format|
      format.html { redirect_to ticketlines_url, notice: 'Ticketline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticketline
      @ticketline = Ticketline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticketline_params
      params.require(:ticketline).permit(:attributes, :line, :price, :taxid, :unitCost, :units, :unitsRefund)
    end
end
