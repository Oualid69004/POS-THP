class PaymentoutController < ApplicationController
  def index
    @tickets = Ticket.where(tickettype: 'purshas').all
  end
end
