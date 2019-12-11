class MemoryController < ApplicationController
  def destroy
    current_user.memory.ticketlines.each do |ticketline|
      ticketline.destroy
    end
    redirect_to sales_path
  end
end
