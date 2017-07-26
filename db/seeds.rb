[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

users = User.create!([{
  username: "srilankandenzel",
  firstname: "SL",
  lastname: "Denzel",
  email: "denzel@denzel.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "mickyginger",
  firstname: "Mike",
  lastname: "Hayden",
  email: "mike@mike.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "eisacke",
  firstname: "Emily",
  lastname: "Isacke",
  email: "emily@emily.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "markyjangles",
  firstname: "Mark",
  lastname: "Davis",
  email: "mark@mark.co",
  password: "password",
  password_confirmation: "password"
  },{
  username: "gilfoyle",
  firstname: "Jack",
  lastname: "May",
  email: "jack@jack.co",
  password: "password",
  password_confirmation: "password"
  }])

  Medium.create!([{
    name: "Dawn of the Planet of the Apes", release_date: Date.new(2014, 6, 26),
    overview: "A group of scientists in San Francisco struggle to stay alive in the aftermath of a plague that is wiping out humanity, while Caesar tries to maintain dominance over his community of intelligent apes.",
    poster_path: "/rjUl3pd1LHVOVfG4IGcyA1cId5l.jpg",
    genre_ids: [878, 28, 18, 53],
    creator: users[0]
  },{
    name: "Spider-Man: Homecoming", release_date: Date.new(2017, 7, 05),
    overview: "Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.",
    poster_path: "/ApYhuwBWzl29Oxe9JJsgL7qILbD.jpg",
    genre_ids: [878, 28, 12],
    creator: users[0]
    },{
    name: "Logan", release_date: Date.new(2017, 2, 28),
    overview: "In the near future, a weary Logan cares for an ailing Professor X in a hideout on the Mexican border. But Logan's attempts to hide from the world and his legacy are upended when a young mutant arrives, pursued by dark forces.",
    poster_path: "https://image.tmdb.org/t/p/w592/gGBu0hKw9BGddG8RkRAMX7B6NDB.jpg",
    genre_ids: [878, 28, 18],
    creator: users[0]
  },{
    name: "Minions", release_date: Date.new(2015, 6, 17),
    overview: "Minions Stuart, Kevin and Bob are recruited by Scarlet Overkill, a super-villain who, alongside her inventor husband Herb, hatches a plot to take over the world.",
    poster_path: "/uX7LXnsC7bZJZjn048UCOwkPXWJ.jpg",
    genre_ids: [10751, 16, 12, 35],
    creator: users[1]
  },{
    name: "Frozen", release_date: Date.new(2013, 11, 27),
    overview: "Young princess Anna of Arendelle dreams about finding true love at her sister Elsa's coronation. Fate takes her on a dangerous journey in an attempt to end the eternal winter that has fallen over the kingdom. She's accompanied by ice delivery man Kristoff, his reindeer Sven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means",
    poster_path: "/jIjdFXKUNtdf1bwqMrhearpyjMj.jpg",
    genre_ids: [10751, 16, 12],
    creator: users[1]
  },{
    name: "Finding Nemo", release_date: Date.new(2003, 5, 30),
    overview: "Nemo, an adventurous young clownfish, is unexpectedly taken from his Great Barrier Reef home to a dentist's office aquarium. It's up to his worrisome father Marlin and a friendly but forgetful fish Dory to bring Nemo home -- meeting vegetarian sharks, surfer dude turtles, hypnotic jellyfish, hungry seagulls, and more along the way.",
    poster_path: "/syPWyeeqzTQIxjIUaIFI7d0TyEY.jpg",
    genre_ids: [10751, 16],
    creator: users[1]
  },{
    name: "Get Out", release_date: Date.new(2017, 2, 24),
    overview: "Chris and his girlfriend Rose go upstate to visit her parents for the weekend. At first, Chris reads the family's overly accommodating behavior as nervous attempts to deal with their daughter's interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.",
    poster_path: "/1SwAVYpuLj8KsHxllTF8Dt9dSSX.jpg",
    genre_ids: [9648, 53, 27],
    creator: users[2]
  },{
    name: "The Shining", release_date: Date.new(1980, 5, 22),
    overview: "Jack Torrance accepts a caretaker job at the Overlook Hotel, where he, along with his wife Wendy and their son Danny, must live isolated from the rest of the world for the winter. But they aren't prepared for the madness that lurks within.",
    poster_path: "/9fgh3Ns1iRzlQNYuJyK0ARQZU7w.jpg",
    genre_ids: [53, 27],
    creator: users[2]
  },{
    name: "Rings", release_date: Date.new(2017, 2, 01),
    overview: "Julia becomes worried about her boyfriend, Holt when he explores the dark urban legend of a mysterious videotape said to kill the watcher seven days after viewing. She sacrifices herself to save her boyfriend and in doing so makes a horrifying discovery: there is a \"movie within the movie\" that no one has ever seen before.",
    poster_path: "/bbxtz5V0vvnTDA2qWbiiRC77Ok9.jpg",
    genre_ids: [27],
    creator: users[2]
  },{
    name: "Beauty and the Beast", release_date: Date.new(2017, 3, 16),
    overview: "A live-action adaptation of Disney's version of the classic 'Beauty and the Beast' tale of a cursed prince and a beautiful young woman who helps him break the spell.",
    poster_path: "/tWqifoYuwLETmmasnGHO7xBjEtt.jpg",
    genre_ids: [1074, 14, 10749],
    creator: users[3]
  },{
    name: "La La Land", release_date: Date.new(2016, 11, 29),
    overview: "Mia, an aspiring actress, serves lattes to movie stars in between auditions and Sebastian, a jazz musician, scrapes by playing cocktail party gigs in dingy bars, but as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.",
    poster_path: "/ylXCdC106IKiarftHkcacasaAcb.jpg",
    genre_ids: [35, 18, 10402, 10749],
    creator: users[3]
  },{
    name: "Her", release_date: Date.new(2013, 12, 18),
    overview: "In the not so distant future, Theodore, a lonely writer purchases a newly developed operating system designed to meet the user's every needs. To Theordore's surprise, a romantic relationship develops between him and his operating system. This unconventional love story blends science fiction and romance in a sweet tale that explores the nature of love and the ways that technology isolates and connects us all.",
    poster_path: "/fsoTLnUXEUTNuVCBxAJMY0HPPd.jpg",
    genre_ids: [878, 18, 10749],
    creator: users[3]
  },{
    name: "The Revenant", release_date: Date.new(2015, 12, 25),
    overview: "In the 1820s, a frontiersman, Hugh Glass, sets out on a path of vengeance against those who left him for dead after a bear mauling.",
    poster_path: "/oXUWEc5i3wYyFnL1Ycu8ppxxPvs.jpg",
    genre_ids: [37, 18, 12, 53],
    creator: users[4]
  },{
    name: "Django Unchained", release_date: Date.new(2013, 12, 18),
    overview: "With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.",
    poster_path: "/5WJnxuw41sddupf8cwOxYftuvJG.jpg",
    genre_ids: [37, 18],
    creator: users[4]
  },{
    name: "Hell or High Water", release_date: Date.new(2016, 8, 12),
    overview: "A divorced dad and his ex-con brother resort to a desperate scheme in order to save their family's farm in West Texas.",
    poster_path: "/6YOrNBdoXvT8aC5VPLkkN6t5z0V.jpg",
    genre_ids: [80, 18, 53, 37],
    creator: users[4]
  }
    ])
