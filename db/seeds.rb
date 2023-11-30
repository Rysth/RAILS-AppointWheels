require 'faker'

# Create dummy data for the 'cars' table
10.times do
  Car.create(
    model: Faker::Vehicle.model,
    seats: Faker::Number.between(from: 2, to: 8),
    description: Faker::Vehicle.standard_specs,
    price_per_day: Faker::Number.decimal(l_digits: 2),
    vehicle_type: Faker::Vehicle.model,
  )
end

# Create dummy data for the 'users' table
10.times do
  User.create(
    name: Faker::Name.name,
  )
end
