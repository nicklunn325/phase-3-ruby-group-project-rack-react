User.destroy_all
Sprout.destroy_all
UserSprout.destroy_all

5.times do
    User.create(username: Faker::Name.name, password: "password123")
end

Sprout.create(name: "Brocolli", description: Faker::TvShows::GameOfThrones.quote, instructions: Faker::TvShows::HeyArnold.quote, number_of_days: rand(5..7) )

Sprout.create(name: "Radish", description: Faker::TvShows::GameOfThrones.quote, instructions: Faker::TvShows::HeyArnold.quote, number_of_days: rand(5..7) )

Sprout.create(name: "Fenugreek", description: Faker::TvShows::GameOfThrones.quote, instructions: Faker::TvShows::HeyArnold.quote, number_of_days: rand(5..7) )

Sprout.create(name: "Sunflower", description: Faker::TvShows::GameOfThrones.quote, instructions: Faker::TvShows::HeyArnold.quote, number_of_days: rand(5..7))

Sprout.create(name: "Mung", description: Faker::TvShows::GameOfThrones.quote, instructions: Faker::TvShows::HeyArnold.quote, number_of_days: rand(5..7))

user_ids = User.all.map{|user| user.id}
sprout_ids = Sprout.all.map{|sprout| sprout.id}

30.times do 
    UserSprout.create(user_id: rand(user_ids.first..user_ids.last), sprout_id: rand(sprout_ids.first..sprout_ids.last), is_live?: rand(2) == 1 )
end