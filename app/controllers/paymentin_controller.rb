class PaymentinController < ApplicationController
  def index
    @tickets = Ticket.where(tickettype: 'sales').all
  end
end
