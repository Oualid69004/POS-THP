class PaymentinController < ApplicationController
  def index
    @tickets = current_user.company.tickets.where(tickettype: 'sales').all
  end
end
