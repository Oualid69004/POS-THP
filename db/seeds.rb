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
screens.each do |screen|
  Screen.create(
    name: screen,
    url: 'url',
  )
end

roles = ["admin","employee", "manager"]
 roles.each do |role|
    Role.create(
      name: role,
    )
     p "Roles created"
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
     name: Faker::Company.industry,
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
c = Company.create(name: 'admin', businessline: Businessline.last, capital: 1000)
memory = Memory.create
admin = User.create(
  first_name: 'admin',
  last_name: 'admin',
  email: 'admin@admin.admin',
  password: '123456',
  company: c,
  role: Role.first,
  memory: memory
)
memory.update(user: admin)
stock = Stockcurrent.create(company: c)
c.update(stockcurrent: stock)
legumes = Category.create(name: 'legumes')
viandes = Category.create(name: 'viandes')
fromages = Category.create(name: 'fromages')
CompanyCategory.create(company: c, category: legumes)
CompanyCategory.create(company: c, category: viandes)
CompanyCategory.create(company: c, category: fromages)
10.times do
  a = Product.new(name: 'tomates', category: legumes, stockcurrent: stock, pricebuy: 3, pricesell: 4)
  if Product.find_by(name: 'tomates') == nil
    a.save
  else
    Product.find_by(name: 'tomates').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

  b = Product.new(name: 'courgettes', category: legumes, stockcurrent: stock, pricebuy: 6, pricesell: 7)
  if Product.find_by(name: 'courgettes') == nil
    b.save
  else
    Product.find_by(name: 'courgettes').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

  c = Product.new(name: 'steack', category: viandes, stockcurrent: stock, pricebuy: 10, pricesell: 12)
  if Product.find_by(name: 'steack') == nil
    c.save
  else
    Product.find_by(name: 'steack').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

  d = Product.new(name: 'jambon', category: viandes, stockcurrent: stock, pricebuy: 5, pricesell: 6)
  if Product.find_by(name: 'jambon') == nil
    d.save
  else
    Product.find_by(name: 'jambon').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

  e = Product.new(name: 'tome', category: fromages, stockcurrent: stock, pricebuy: 7, pricesell: 8)
  if Product.find_by(name: 'tome') == nil
    e.save
  else
    Product.find_by(name: 'tome').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

  f = Product.new(name: 'emmental', category: fromages, stockcurrent: stock, pricebuy: 4, pricesell: 5)
  if Product.find_by(name: 'emmental') == nil
    f.save
  else
    Product.find_by(name: 'emmental').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

  g = Product.new(name: 'cheddar', category: fromages, stockcurrent: stock, pricebuy: 1, pricesell: 2)
  if Product.find_by(name: 'cheddar') == nil
    g.save
  else
    Product.find_by(name: 'cheddar').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end

end
supplier = Company.create(name: 'supplier', businessline: Businessline.last)
supplierstock = Stockcurrent.create(company: supplier)
supplier.update(stockcurrent: supplierstock)
legumessupplier = Category.create(name: 'legumes')
viandessuppier = Category.create(name: 'viandes')
fromagessupplier = Category.create(name: 'fromages')
CompanyCategory.create(company: supplier, category: legumessupplier)
CompanyCategory.create(company: supplier, category: viandessuppier)
CompanyCategory.create(company: supplier, category: fromagessupplier)

a = Product.new(name: 'tomates', category: legumessupplier, stockcurrent: supplierstock, pricebuy: 3)
if Product.find_by(name: 'tomates', stockcurrent: supplierstock) == nil
  a.save
else
  Product.find_by(name: 'tomates', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end

b = Product.new(name: 'courgettes', category: legumessupplier, stockcurrent: supplierstock, pricebuy: 6)
if Product.find_by(name: 'courgettes', stockcurrent: supplierstock) == nil
  b.save
else
  Product.find_by(name: 'courgettes', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end

c = Product.new(name: 'steack', category: viandessuppier, stockcurrent: supplierstock, pricebuy: 10)
if Product.find_by(name: 'steack', stockcurrent: supplierstock) == nil
  c.save
else
  Product.find_by(name: 'steack', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end

d = Product.new(name: 'jambon', category: viandessuppier, stockcurrent: supplierstock, pricebuy: 5)
if Product.find_by(name: 'jambon', stockcurrent: supplierstock) == nil
  d.save
else
  Product.find_by(name: 'jambon', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end

e = Product.new(name: 'tome', category: fromagessupplier, stockcurrent: supplierstock, pricebuy: 7)
if Product.find_by(name: 'tome', stockcurrent: supplierstock) == nil
  e.save
else
  Product.find_by(name: 'tome', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end

f = Product.new(name: 'emmental', category: fromagessupplier, stockcurrent: supplierstock, pricebuy: 4)
if Product.find_by(name: 'emmental', stockcurrent: supplierstock) == nil
  f.save
else
  Product.find_by(name: 'emmental', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end

g = Product.new(name: 'cheddar', category: fromagessupplier, stockcurrent: supplierstock, pricebuy: 1)
if Product.find_by(name: 'cheddar', stockcurrent: supplierstock) == nil
  g.save
else
  Product.find_by(name: 'cheddar', stockcurrent: supplierstock).update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
end
