class ReceiptsController < ApplicationController

  def index
    @receipts = current_user.company.receipts.first
  end

end
