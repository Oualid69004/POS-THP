class MemoryController < ApplicationController
  def destroy
    current_user.memory.ticketlines.each do |ticketline|
      ticketline.destroy
    end
    redirect_to purshas_path
  end
end
