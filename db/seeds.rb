# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all

gonzalo = User.create!([{ name: "Gonzalo",
  location: "Legazpi",
  bio: "I love exploring the city with my family and dog!",
  email: "gonzalo@roby.com",
  password: "123456"
  }])

gonzalo.save
puts gonzalo.email

daniel = User.create!([{ name: "Daniel",
  location: "Concepcion",
  bio: "I just moved to Madrid and I am hoping to find social events to
  attend with my dog",
  email: "dani@roby.com",
  password: "123456"
  }])

daniel.save
puts daniel.email

gloria = User.create!([{ name: "Gloria",
  location: "Guzman el Bueno",
  bio: "I just moved to Madrid with my search and rescue dog and I am looking for all
  types of activities with my dog and to meet new people",
  email: "gloria@roby.com",
  password: "123456"
  }])

gloria.save
puts gloria.email

chus = User.create!([{ name: "Chus",
  location: "Usera",
  bio: "I live with my dog in Usera and we love going on hikes together in the
  outskirts of Madrid",
  email: "chus@roby.com",
  password: "123456"
  }])

chus.save
puts chus.email

felipe = User.create!([{ name: "Felipe",
  location: "Cruz del Rayo",
  bio: "I am looking for agility trainers to prepare my dog for an upcoming competition.",
  email: "felipe@roby.com",
  password: "123456"
  }])

felipe.save
puts felipe.email

emi = User.create!([{ name: "Emi",
  location: "Sainz de Baranda",
  bio: "Looking for nearby dog owners to join me and my dog on evening walks.",
  email: "Emi@roby.com",
  password: "123456"
  }])

emi.save
puts emi.email

grace = User.new({ name: "Grace",
  location: "Estrecho",
  bio: "Looking to find other dog owners who want to go on weekend trips around the
  Community of Madrid",
  email: "Grace@roby.com",
  password: "123456"
  })

grace.save
puts grace.email

marcos = User.new({ name: "Marcos",
  location: "Moncloa",
  bio: "I miss spending time around dogs so I am looking for social events so I can make
  friends and also spend time with dogs.",
  email: "Marcos@roby.com",
  password: "123456"
  })

marcos.save
puts marcos.email

juan = User.new({ name: "Juan",
  location: "Arguelles",
  bio: "I just got a puppy and I am looking for training events to meet other puppies",
  email: "Juan@roby.com",
  password: "123456"
  })

juan.save
puts juan.email

fanny = User.new({ name: "Fanny",
  location: "Cuatro Caminos",
  bio: "I don't have a dog but I love being around them,
  so I am looking for social events to make friends with dogs!",
  email: "fanny@roby.com",
  password: "123456"
  })

fanny.save
puts fanny.email

maria = User.new({ name: "Maria",
  location: "Tetuan",
  bio: "I just moved to Madrid with my dog and we love going on walks and going to
  the dog park.",
  email: "maria@roby.com",
  password: "123456"
  })

maria.save
puts maria.email

ines = User.new({ name: "Ines",
  location: "Bilbao",
  bio: "I live in Madrid with my small dog, who is afraid of bigger dogs.
  So We are looking for events with small dogs only.",
  email: "ines@roby.com",
  password: "123456"
  })

ines.save
puts ines.email

Activity.create!([{ name: "Puppy Bday",
  category: "Social",
  location: "Parque de Retiro",
  description: "Come join Rex while celebrating his 2nd birthday!",
  start_date: "12/11/2022",
  end_date: "12/11/2022",
  start_time: "11:00",
  end_time: "15:00",
  dog_limit: "10",
  people_limit: "20",
  price: 00,
  user: User.all.sample
  }])

  puts "first activity"

Activity.create!([{ name: "Agility Training",
  category: "Training",
  location: "Parque de Berlin",
  description: "Meet with experienced trainers and learn some new agility skills!",
  start_date: "08/10/22",
  end_date: "08/10/22",
  start_time: "13:00",
  end_time: "14:00",
  dog_limit: 5,
  people_limit: 5,
  price: 50,
  user: User.all.sample
  }])

  puts "second activity"

Activity.create!([{ name: "Coffees and Canines",
  category: "Social",
  location: "Cafe Federal",
  description: "Join us at this cafe with your dogs and enjoy some
  morning coffee with good company. Coffee is included in the price.",
  start_date: "09/11/22",
  end_date: "09/11/22",
  start_time: "09:00",
  end_time: "11:00",
  dog_limit: 5,
  people_limit: 5,
  price: 3,
  user: User.all.sample
  }])

  puts "third activity"

Activity.create!([{ name: "Cocktails and Wagging Tails",
  category: "Social",
  location: "Barbara Ann",
  description: "Join us for a night out at a dog-friendly cocktail bar.
  Dress code: formal. One cocktail included with price.",
  start_date: "10/15/22",
  end_date: "10/15/22",
  start_time: "21:00",
  end_time: "23:59",
  dog_limit: 10,
  people_limit: 10,
  price: 10,
  user: User.all.sample
  }])

    puts "fourth activity"

Activity.create!([{ name: "Cocktails and Wagging Tails",
  category: "Social",
  location: "Barbara Ann",
  description: "Join us for a night out at a dog-friendly cocktail bar.
  Dress code: formal. One cocktail included with price.",
      start_date: "10/15/22",
      end_date: "10/15/22",
      start_time: "21:00",
      end_time: "23:59",
      dog_limit: 10,
      people_limit: 10,
      price: 10,
      user: User.all.sample
      }])

  puts "fourth activity"
