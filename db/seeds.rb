puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "912487521", category: "chinese"}
test = {name: "test", address: "test", phone_number: "912487521", category: "chinese"}
vasco = {name: "Vasco", address: "St. Peter of The Cove", phone_number: "913641911", category: "japanese"}
tiago = {name: "Tiago", address: "St. Peter of The Cove 2", phone_number: "936461911", category: "italian"}
carlos = {name: "Carlos", address: "Matosinhos", phone_number: "917983243", category: "belgian"}


[dishoom, test, vasco, tiago, carlos].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
