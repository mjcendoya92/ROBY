User.destroy_all
Dog.destroy_all
Activity.destroy_all
puts "database_clean"

gonzalo = User.new({ name: "Gonzalo",
  location: "Legazpi",
  bio: "I love exploring the city with my family and dog!",
  email: "gonzalo@roby.com",
  password: "123456"
  })

gonzalo.save
puts gonzalo.email

daniel = User.new({ name: "Daniel",
  location: "Concepcion",
  bio: "I just moved to Madrid and I am hoping to find social events to
  attend with my dog",
  email: "dani@roby.com",
  password: "123456"
  })

daniel.save
puts daniel.email

gloria = User.new({ name: "Gloria",
  location: "Guzman el Bueno",
  bio: "I just moved to Madrid with my search and rescue dog and I am looking for all
  types of activities with my dog and to meet new people",
  email: "gloria@roby.com",
  password: "123456"
  })

gloria.save
puts gloria.email

chus = User.new({ name: "Chus",
  location: "Usera",
  bio: "I live with my dog in Usera and we love going on hikes together in the
  outskirts of Madrid",
  email: "chus@roby.com",
  password: "123456"
  })

chus.save
puts chus.email

felipe = User.new({ name: "Felipe",
  location: "Cruz del Rayo",
  bio: "I am looking for agility trainers to prepare my dog for an upcoming competition.",
  email: "felipe@roby.com",
  password: "123456"
  })

felipe.save
puts felipe.email

emi = User.new({ name: "Emi",
  location: "Sainz de Baranda",
  bio: "Looking for nearby dog owners to join me and my dog on evening walks.",
  email: "Emi@roby.com",
  password: "123456"
  })

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

jager = Dog.new({ name: "Jager",
  breed: "Ratonero Bodeguero Andaluz",
  description: "He is a very friendly, social and active dog.",
  user_id: gonzalo.id,
  age: 2,
  sex: "male",
  })

jager.save
puts jager.name

roby = Dog.new({ name: "Roby",
  breed: "Schnauzer",
  description: "Very energetic dog who sometimes gets nervous around other dogs.",
  user_id: daniel.id,
  age: 5,
  sex: "male"
  })

roby.save
puts roby.name

golfo = Dog.new({ name: "Golfo",
  breed: "Dalmation",
  description: "Sporty and friendly dog who love hikes and activities. Gets along
  well with all dogs!",
  user_id: gloria.id,
  age: 1,
  sex: "male"
  })

golfo.save
puts golfo.name

jack = Dog.new({ name: "Jack",
  breed: "Australian Shepherd",
  description: "Very energetic and loves being outside and hiking.",
  user_id: chus.id,
  age: 3,
  sex: "male"
  })

jack.save
puts jack.name

paco = Dog.new({ name: "Paco",
  breed: "Golden Retriever",
  description: "Sporty and friendly dog.",
  user_id: felipe.id,
  age: 2,
  sex: "male",
  })

paco.save
puts paco.name

carlota = Dog.new({ name: "Carlota",
  breed: "Yorkshire Terrier Mix",
  description: "She is a very small dog who loves food. She sometimes is nervous
  around new dogs and people but is friendly once she is used to them. She loves going
  on short walks around the city.",
  user_id: emi.id,
  age: 5,
  sex: "female",
  })

carlota.save
puts carlota.name

chloe = Dog.new({ name: "Chloe",
  breed: "mutt",
  description: "She is a shelter rescue dog who is still getting used to being around
  other people and dogs. She is not mean, but also not friendly. Please be patient with her.",
  user_id: grace.id,
  age: 4,
  sex: "female"
  })

chloe.save
puts chloe.name

chata = Dog.new({ name: "Chata",
  breed: "Beagle",
  description: "She is a puppy who is very energetic, but has not been around other dogs
  much yet.",
  user_id: juan.id,
  age: 0,
  sex: "female"
})

chata.save
puts chata.name

lola = Dog.new({ name: "Lola",
  breed: "Poodle",
  description: "She is an older dog who loves going on walks and attending social events.
  She is friendly with other dogs but is sometimes scared of dogs who are bigger than her.",
  user_id: fanny.id,
  age: 8,
  sex: "female"
  })

lola.save
puts lola.name

benji = Dog.new({ name: "Benji",
  breed: "Dachsund",
  description: "Benji is a friendly puppy and loves playing fetch and meeting other dogs.",
  user_id: maria.id,
  age: 0,
  sex: "male"
})

benji.save
puts benji.name

Activity.create!([{ name: "Puppy Birthday",
  category: "Social",
  location: "Parque de Retiro",
  description: "Come join Rex while celebrating his 2nd birthday!
  Party attire for dogs is strongly reccomended!",
  start_date: "12/11/2022",
  end_date: "12/11/2022",
  start_time: "11:00",
  end_time: "15:00",
  dog_limit: "10",
  people_limit: "20",
  price: 0,
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
  start_date: "15/10/22",
  end_date: "15/10/22",
  start_time: "21:00",
  end_time: "23:59",
  dog_limit: 10,
  people_limit: 10,
  price: 10,
  user: User.all.sample
  }])

puts "fourth activity"

Activity.create!([{ name: "Pups in the Park",
  category: "Social",
  location: "Parque de Retiro",
  description: "Enjoy your sunday with other dogs and dog lovers in the park.",
  start_date: "16/10/22",
  end_date: "16/10/22",
  start_time: "14:00",
  end_time: "19:00",
  dog_limit: 20,
  people_limit: 50,
  price: 0,
  user: User.all.sample
  }])

puts "fifth activity"

Activity.create!([{ name: "Perrito Party",
  category: "Social",
  location: "Madrid Rio",
  description: "This is an outdoor social event for small dogs.",
  start_date: "17/09/22",
  end_date: "17/09/22",
  start_time: "14:00",
  end_time: "18:00",
  dog_limit: 10,
  people_limit: 20,
  price: 0,
  user: User.all.sample
  }])

puts "Sixth activity"

Activity.create!([{ name: "Puppy Obedience Training",
  category: "Training",
  location: "Casa de Campo",
  description: "Learn some basic obedience skills for you and your puppy with a
  licensed trainer.",
  start_date: "09/10/22",
  end_date: "09/10/22",
  start_time: "14:00",
  end_time: "15:00",
  dog_limit: 7,
  people_limit: 7,
  price: 20,
  user: User.all.sample
  }])

puts "seventh activity"

Activity.create!([{ name: "Behavioral Dog Training",
  category: "Training",
  location: "Parque de Retiro",
  description: "Unlearn bad habits such as diggging, excessive barking or
  accidents in the house with a specialty licesned trainer.",
  start_date: "15/09/22",
  end_date: "15/09/22",
  start_time: "10:00",
  end_time: "11:00",
  dog_limit: 5,
  people_limit: 5,
  price: 50,
  user: User.all.sample
  }])

puts "eighth activity"

Activity.create!([{ name: "Potty Training",
  category: "Training",
  location: "Parque del Oeste",
  description: "Learn potty training tips and skills and how to implement them with your dog.",
  start_date: "16/09/22",
  end_date: "16/09/22",
  start_time: "10:00",
  end_time: "11:00",
  dog_limit: 15,
  people_limit: 15,
  price: 10,
  user: User.all.sample
  }])

puts "ninth activity"

Activity.create!([{ name: "Leash Training",
  category: "Training",
  location: "Salamanca",
  description: "Having trouble taking your dog on walks? This course is designed to help dogs and
  their owners optimize their walks!",
  start_date: "09/08/22",
  end_date: "09/08/22",
  start_time: "17:00",
  end_time: "18:00",
  dog_limit: 5,
  people_limit: 5,
  price: 20,
  user: User.all.sample
  }])

puts "tenth activity"

Activity.create!([{ name: "Circular Campo",
  category: "Hikes",
  location: "Casa de Campo",
  description: "This hike is route around Casa de Campo of 11.7 km. There are many hills and rocky
  terrain, not reccomended for small dogs.",
  start_date: "20/09/22",
  end_date: "20/09/22",
  start_time: "10:00",
  end_time: "16:00",
  dog_limit: 15,
  people_limit: 15,
  price: 0,
  user: User.all.sample
  }])

puts "tenth activity"

Activity.create!([{ name: "Seven Peaks",
  category: "Hikes",
  location: "Parque Nacional de la Sierra de Guadarrama",
  description: "This challenging trail with great views of the Sierra de Guadarrama. Price Includes transportation
  from the center of Madrid, breakfast and dinner after the hike. It is reccomended to bring your own lunches.",
  start_date: "30/09/22",
  end_date: "30/09/22",
  start_time: "09:00",
  end_time: "18:00",
  dog_limit: 7,
  people_limit: 10,
  price: 30,
  user: User.all.sample
  }])

puts "Eleventh activity"

Activity.create!([{ name: "Seven Peaks",
  category: "Hikes",
  location: "Parque Nacional de la Sierra de Guadarrama",
  description: "This challenging trail with great views of the Sierra de Guadarrama. Price Includes transportation
  from the center of Madrid, breakfast and dinner after the hike. It is reccomended to bring your own lunches.",
  start_date: "28/10/22",
  end_date: "28/10/22",
  start_time: "09:00",
  end_time: "18:00",
  dog_limit: 7,
  people_limit: 10,
  price: 30,
  user: User.all.sample
  }])

puts "Eleventh activity"

Activity.create!([{ name: "Camino de los Campamentos",
  category: "Hikes",
  location: "Cercedilla",
  description: "This easy trail is great for getting some fresh air outside of the city. Price Includes transportation
  from the center of Madrid and a meal after the hike. It is reccomended to bring some healthy snacks for during the hike!.
  challenging trail with great views of the Sierra de Guadarrama. Price Includes transportation
  from the center of Madrid, breakfast and dinner after the hike. It is reccomended to bring your own lunches.",
  start_date: "02/10/22",
  end_date: "02/10/22",
  start_time: "09:00",
  end_time: "18:00",
  dog_limit: 7,
  people_limit: 10,
  price: 30,
  user: User.all.sample
  }])

puts "Twelfth activity"

Activity.create!([{ name: "Camino de los Campamentos",
  category: "Hikes",
  location: "Cercedilla",
  description: "This easy trail is great for getting some fresh air outside of the city. Price Includes transportation
  from the center of Madrid and a meal after the hike. It is reccomended to bring some healthy snacks for during the hike!.
  challenging trail with great views of the Sierra de Guadarrama. Price Includes transportation
  from the center of Madrid, breakfast and dinner after the hike. It is reccomended to bring your own lunches.",
  start_date: "02/10/22",
  end_date: "02/10/22",
  start_time: "09:00",
  end_time: "18:00",
  dog_limit: 7,
  people_limit: 10,
  price: 30,
  user: User.all.sample
  }])

puts "12th activity"

Activity.create!([{ name: "Madrid Rio",
  category: "Walks",
  location: "Principe Pio",
  description: "Take a stroll along Madrid Rio in the evening. Great for all types of dogs!",
  start_date: "07/10/22",
  end_date: "07/10/22",
  start_time: "18:00",
  end_time: "19:00",
  dog_limit: 10,
  people_limit: 15,
  price: 0,
  user: User.all.sample
  }])

puts "13th activity"

Activity.create!([{ name: "Morning Retiro and Coffee Break",
  category: "Walks",
  location: "Principe Pio",
  description: "Take a walk around Parque de Retiro in the morning before work. Coffee is included in the price.",
  start_date: "13/09/22",
  end_date: "13/09/22",
  start_time: "08:00",
  end_time: "09:00",
  dog_limit: 10,
  people_limit: 15,
  price: 3,
  user: User.all.sample
  }])

puts "14th activity"
