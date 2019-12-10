class PaymentinController < ApplicationController
  def index
    @tickets = Ticket.where(tickettype: 'sales').all
    @receipt = Receipt.all
  end
end
