class Ticket < ApplicationRecord
    belongs_to :company
    has_many :users
    has_many :customers
    has_many :ticketlines
    has_many :products, through: :ticketlines
    belongs_to :receipt, optional: true

    def self.purshas(current_user)
      @ticket = Ticket.create(company: current_user.company, tickettype: 'purshas', ticketid: Faker::Alphanumeric.alpha(number: 15), status: 1)
      globalprice = 0
      current_user.memory.ticketlines.each do |ticketline|
        quantity = ticketline.units.to_i
        ticketline_price = ticketline.product.pricebuy.to_i * quantity
        globalprice += ticketline_price
        category = current_user.company.categories.where(name: ticketline.product.category.name).first
        product = Product.new(name: ticketline.product.name, category: category, stockcurrent: current_user.company.stockcurrent, pricebuy: ticketline.product.pricebuy, pricesell: ticketline.product.pricesell.to_i+1, stockvolume: ticketline.units)
        if Product.find_by(name: ticketline.product.name, stockcurrent: current_user.company.stockcurrent) == nil
          product.save
        else
          Product.find_by(name: ticketline.product.name, stockcurrent: current_user.company.stockcurrent).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + ticketline.units)
        end
        ticketline.update(ticket: @ticket, memory: nil, price: ticketline_price)
        current_user.company.update(capital: (current_user.company.capital -= ticketline_price.to_i))
        current_user.company.stockcurrent.update(total: current_user.company.stockcurrent.total + ticketline_price, units: current_user.company.stockcurrent.units + quantity)
      end
      @ticket.update(ticketTotal: globalprice)
    end

    def self.sales(current_user)
      @ticket = Ticket.create(company: current_user.company, tickettype: 'sales', ticketid: Faker::Alphanumeric.alpha(number: 15), status: 2)
      globalprice = 0
      current_user.memory_sale.ticketlines.each do |ticketline|
        ticketline_price = ticketline.product.pricesell.to_i * ticketline.units.to_i
        globalprice += ticketline_price
        if ticketline.product.stockvolume == 1
          current_user.company.stockcurrent.products.find(ticketline.product.id).destroy
        else
          product = current_user.company.stockcurrent.products.find(ticketline.product.id)
          product.update(stockvolume: product.stockvolume -= ticketline.units)
        end
        ticketline.update(ticket: @ticket, memory_sale: nil, price: ticketline_price)
        current_user.company.update(capital: (current_user.company.capital += ticketline_price))
        current_user.company.stockcurrent.update(total: current_user.company.stockcurrent.total - ticketline_price, units: current_user.company.stockcurrent.units - ticketline.units.to_i)
      end
      @ticket.update(ticketTotal: globalprice)
    end
end
