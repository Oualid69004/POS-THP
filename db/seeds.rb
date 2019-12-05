# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
screens = [
  "User",
  "Create user",
  "Roles",
  "Screens",
  "Permissions",
  "Companies",
  "Branch",
  "Business Lines",
  "Products",
  "Categories",
  "Suppliers",
  "Customs",
  "Stock Management",
  "Purshas",
  "Sales"
]
roles = ["admin","employee","manager"]

screens.each do |screen|
  Screen.create(
    name: screen,
    url: 'url',
  )
   p 'screens created'
end
roles.each do |role|
    Role.create(
      name: role,
    )
     p 'Roles created'
 end
 10.times do |category|

    Category.create(
     name: Faker::Name.name,
     logo: Faker::Company.industry
 )
    puts "Categories created"
end
10.times do |businessline|
    Businessline.create(
     name:        Faker::Company.industry,
     description: Faker::Company.type
         )
    puts "Businesslines created"
end
10.times do |company|
    Company.create(
     name:   Faker::Name.name,
     address: Faker::Address.street_address ,
     logo:   Faker::Cosmere.shard_world,
     mobile: Faker::Number.leading_zero_number(digits: 10),
     businessline: Businessline.find(rand(1..10))
         )
    puts "Company created"
end
10.times do |branch|
    Branch.create(
     name:   Faker::Name.name,
     address: Faker::Address.street_address ,
     mobile: Faker::Number.leading_zero_number(digits: 10),
     company: Company.find(rand(1..10))
         )
    puts "Branch created"
end
10.times do |closedcashes|
    Closedcash.create(
     money:   Faker::Number.decimal(l_digits: 2),
     host:    Faker::Name.name ,
     branch: Branch.find(rand(1..10))
         )
    puts "ClosedCah created"
end
10.times do |paymentsuppliers|
    Paymentsupplier.create(
    paymentNote:   Faker::Number.decimal(l_digits: 2),
    paymentValue:  Faker::Number.decimal(l_digits: 2),
         )
    puts " paymentsuppliers created"
end
10.times do |stockins|
    Stockin.create(
        total: Faker::Number.between(from: 0, to: 10000),
         )
    puts " stockins created"
end

10.times do |stocklevels|
    Stocklevel.create(
        location: Faker::Address.building_number,
        stockmaximum: Faker::Number.between(from: 0, to: 1000),
        stocksecurity: Faker::Number.between(from: 0, to: 5)         )
    puts " stocklevels created"
end

Company.all.each do |company|
  3.times do
    CompanyCategory.create(
      company: company,
      category: Category.find(rand(1..10))
    )
  end
end
c = Company.create(name: 'admin', businessline: Businessline.last)
memory = Memory.create
admin = User.create(
  first_name: 'admin',
  last_name: 'admin',
  email: 'admin@admin.admin',
  password: '123456',
  company: Company.last,
  role: Role.first,
  memory: memory
)
memory.update(user: admin)
stock = Stockcurrent.create(company: c)
c.update(stockcurrent: stock)
legumes = Category.create(name: 'legumes')
viandes = Category.create(name: 'viandes')
fromages = Category.create(name: 'fromages')
CompanyCategory.create(company: Company.last, category: legumes)
CompanyCategory.create(company: Company.last, category: viandes)
CompanyCategory.create(company: Company.last, category: fromages)
Product.create(name: 'tomates', category: legumes, stockcurrent: stock, pricebuy: 3)
Product.create(name: 'courgettes', category: legumes, stockcurrent: stock, pricebuy: 6)
Product.create(name: 'steack', category: viandes, stockcurrent: stock, pricebuy: 10)
Product.create(name: 'jambon', category: viandes, stockcurrent: stock, pricebuy: 5)
Product.create(name: 'tome', category: fromages, stockcurrent: stock, pricebuy: 7)
Product.create(name: 'emmental', category: fromages, stockcurrent: stock, pricebuy: 4)
Product.create(name: 'cheddar', category: fromages, stockcurrent: stock, pricebuy: 1)
