puts "SEEDS STARTING"
Restaurant.destroy_all

puts "creating restaurants"
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    category: Restaurant::TYPES.sample,
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.cell_phone
  )
end



puts "SEEDS ENDING"
