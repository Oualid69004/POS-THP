# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do |category|
    Category.create(
     name: Faker::Name.name,
     logo: Faker::Company.industry
         )
    puts "Categories created"
end
10.times do |busnessline|
    Businessline.create(
     name: Faker::Name.name,
     description: Faker::Company.type
         )
    puts "Busnessline created"
end
 10.times do |company|
     Company.create(
      name: Faker::Name.name,
      address: Faker::Address.street_address ,
      logo: Faker::Cosmere.shard_world,
      mobile: Faker::Number.leading_zero_number(digits: 10),
      businessline: Businessline.find(rand(1..10))
          )
     puts "Company created"
 end

 10.times do |branch|
    Branch.create(
     name:   Faker::Name.name,
     address: Faker::Address.street_address ,
     mobile: Faker::Alphanumeric.alphanumeric(number: 10),
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

10.times do |paymentsuppliers|
    Paymentsupplier.create(
    paymentNote: Faker::Number.decimal(l_digits: 2),
    paymentValue: Faker::Number.decimal(l_digits: 2)
    
    )
    puts "Paymentsupplier created"
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
        stocksecurity: Faker::Number.between(from: 0, to: 5)
         )
    puts " stocklevels created"
end
10.times do |stockcurrents|
    Stockcurrent.create(
        cost: Faker::Number.between(from: 0, to: 100),
        total: Faker::Number.between(from: 0, to: 50),
        units: Faker::Number.between(from: 0, to: 50),
        branch: Branch.find(rand(1..10))
         )
    puts "stockcurrents created"
end
10.times do |suppliers|
    Supplier.create(
        name: Faker::Name.name,
        adress: Faker::Address.street_address,
        email: Faker::Internet.email,
        mobile: Faker::Number.leading_zero_number(digits: 10),
        stockin: Stockin.find(rand(1..10)),
        paymentsupplier: Paymentsupplier.find(rand(1..10)),
        company: Company.find(rand(1..10))
         )
    puts "suppliers created"
end

