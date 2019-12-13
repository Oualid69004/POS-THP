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

roles = ["admin","employee", "manager"]
 roles.each do |role|
    Role.create(
      name: role,
    )
     p "Roles created"
 end

 screens.each do |screen|
   objscreen = Screen.create(
     name: screen,
     url: 'url',
   )
   Rolepermission.create(
     role: Role.first,
     screen: objscreen
   )
 end

10.times do |businessline|
    Businessline.create(
     name: Faker::Company.industry,
     description: Faker::Company.type
         )
    puts "Businesslines created"
end

c = Company.create(name: 'adminCompany', address: '143, cours Lafayette, Lyon', mobile: '0403020102', businessline: Businessline.last, capital: 1000)
memory = Memory.create
memory_sales = MemorySale.create
admin = User.create(
  first_name: 'admin',
  last_name: 'admin',
  email: 'admin@admin.admin',
  password: '123456',
  company: c,
  role: Role.first,
  memory: memory,
  memory_sale: memory_sales
)
memory.update(user: admin)
memory_sales.update(user: admin)
stock = Stockcurrent.create(company: c, stockmin: 5, stockmax: 150)
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
  stock.update(total: stock.total + a.pricebuy, units: stock.units + 1)

  b = Product.new(name: 'courgettes', category: legumes, stockcurrent: stock, pricebuy: 6, pricesell: 7)
  if Product.find_by(name: 'courgettes') == nil
    b.save
  else
    Product.find_by(name: 'courgettes').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end
  stock.update(total: stock.total + b.pricebuy, units: stock.units + 1)

  c = Product.new(name: 'steack', category: viandes, stockcurrent: stock, pricebuy: 10, pricesell: 12)
  if Product.find_by(name: 'steack') == nil
    c.save
  else
    Product.find_by(name: 'steack').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end
  stock.update(total: stock.total + c.pricebuy, units: stock.units + 1)

  d = Product.new(name: 'jambon', category: viandes, stockcurrent: stock, pricebuy: 5, pricesell: 6)
  if Product.find_by(name: 'jambon') == nil
    d.save
  else
    Product.find_by(name: 'jambon').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end
  stock.update(total: stock.total + d.pricebuy, units: stock.units + 1)

  e = Product.new(name: 'tome', category: fromages, stockcurrent: stock, pricebuy: 7, pricesell: 8)
  if Product.find_by(name: 'tome') == nil
    e.save
  else
    Product.find_by(name: 'tome').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end
  stock.update(total: stock.total + e.pricebuy, units: stock.units + 1)

  f = Product.new(name: 'emmental', category: fromages, stockcurrent: stock, pricebuy: 4, pricesell: 5)
  if Product.find_by(name: 'emmental') == nil
    f.save
  else
    Product.find_by(name: 'emmental').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end
  stock.update(total: stock.total + f.pricebuy, units: stock.units + 1)

  g = Product.new(name: 'cheddar', category: fromages, stockcurrent: stock, pricebuy: 1, pricesell: 2)
  if Product.find_by(name: 'cheddar') == nil
    g.save
  else
    Product.find_by(name: 'cheddar').update(stockvolume: Product.find_by(name: 'tomates').stockvolume + 1)
  end
  stock.update(total: stock.total + g.pricebuy, units: stock.units + 1)

end


supplier = Company.create(name: 'supplier', address: '143, cours Lafayette, Lyon', mobile: '0403020102', businessline: Businessline.last)
supp = Supplier.create(name: 'supplier', company: supplier)
supplierstock = Stockcurrent.create(company: supplier, stockmin: 5, stockmax: 150)
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
