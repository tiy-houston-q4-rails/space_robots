Robot.create name: "Bender", photo: "http://thefuturebuzz.com/wp-content/uploads/2011/10/bender.jpg"

5.times do
  Robot.create name: Faker::Name.first_name, photo: Faker::Avatar.image(Faker::Name.first_name, "500x500")
end
