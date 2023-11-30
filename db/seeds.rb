require 'faker'

# Create dummy data for the 'cars' table
10.times do
  Car.create(
    model: Faker::Vehicle.model,
    seats: Faker::Number.between(from: 2, to: 8),
    description: Faker::Vehicle.standard_specs,
    price_per_day: Faker::Number.decimal(l_digits: 2),
    vehicle_type: Faker::Vehicle.model,
    removed: Faker::Boolean.boolean,
  )
end

# Create dummy data for the 'users' table
10.times do
  User.create(
    name: Faker::Name.name,
  )
end

10.times do
  rental = Rental.create({
    total_price: Faker::Number.decimal(l_digits: 2),
    start_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    end_date: Faker::Date.between(from: Date.today + 1, to: 1.year.from_now),
    car_id: Faker::Number.between(from: 1, to: 10),
    user_id: Faker::Number.between(from: 1, to: 10)
  })
end
