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

daniel = User.create!([{ name: "Daniel",
  location: "Concepcion",
  bio: "I just moved to Madrid and I am hoping to find social events to
  attend with my dog",
  email: "dani@roby.com",
  password: "123456"
  }])

gloria = User.create!([{ name: "Gloria",
  location: "Guzman el Bueno",
  bio: "I just moved to Madrid with my search and rescue dog and I am looking for all
  types of activities with my dog and to meet new people",
  email: "gloria@roby.com",
  password: "123456"
  }])

chus = User.create!([{ name: "Chus",
  location: "Usera",
  bio: "I live with my dog in Usera and we love going on hikes together in the
  outskirts of Madrid",
  email: "chus@roby.com",
  password: "123456"
  }])

felipe = User.create!([{ name: "Felipe",
  location: "Cruz del Rayo",
  bio: "I am looking for agility trainers to prepare my dog for an upcoming competition",
  email: "felipe@roby.com",
  password: "123456"
  }])

emi = User.create!([{ name: "Emi",
  location: "Sainz de Baranda",
  bio: "Looking for nearby dog owners to join me and my dog on evening walks.
  I am also looking to find some social events for small dogs",
  email: "Emi@roby.com",
  password: "123456"
  }])

grace = User.new({ name: "Grace",
  location: "Estrecho",
  bio: "Looking to find other dog owners who want to go on weekend trips around the
  Community of Madrid",
  email: "Grace@roby.com",
  password: "123456"
  })
grace.save
puts grace.email

Activity.create!([{ name: "Puppy Bday",
  category: "Party",
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
