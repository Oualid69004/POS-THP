class PaymentoutController < ApplicationController
  def index
    @tickets = current_user.company.tickets.where(tickettype: 'purshas').all
  end
end
