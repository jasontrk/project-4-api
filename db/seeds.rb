[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

users = User.create!([
  { username: "mickyginger", firstname: "Mike", lastname: "Hayden" },
  { username: "eisacke", firstname: "Emily", lastname: "Isacke" },
  { username: "markyjangles", firstname: "Marc", lastname: "De Vois" }
])

Medium.create!([
  { name: "300", first_air_date: Date.new(2014, 7, 13), overview: "bla bla bla", creator: users[0] },
  { name: "Gladiator", first_air_date: Date.new(2013, 4, 11), overview: "bla bla bla", creator: users[1] },
  { name: "Kingdom Of Heaven", first_air_date: Date.new(2012, 2, 02), overview: "bla bla bla", creator: users[2] }
])
