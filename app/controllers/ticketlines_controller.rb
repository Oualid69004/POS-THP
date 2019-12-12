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

    @amount = 500

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
    Ticket.purshas(current_user)
    flash[:success] = 'Votre commande a bien été prit en compte'
    redirect_to purshas_path

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to purshas_path

   
  end

  # PATCH/PUT /ticketlines/1
  # PATCH/PUT /ticketlines/1.json
  def update

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
end
