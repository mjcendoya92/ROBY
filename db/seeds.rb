User.destroy_all
Dog.destroy_all
Activity.destroy_all
Category.destroy_all
puts "database_clean"
require "open-uri"

gonzalo = User.new({ name: "Gonzalo",
  location: "Legazpi",
  bio: "I love exploring the city with my family and dog!",
  email: "gonzalo@roby.com",
  password: "123456"
  })

gonzalo.save
puts gonzalo.email

user_image_url = URI.open("https://res.cloudinary.com/dlanz/image/upload/v1662380770/production/ud7lj5pisqlcbjhnru1t.jpg")
daniel = User.new({ name: "Daniel",
  location: "Concepcion",
  bio: "I just moved to Madrid and I am hoping to find social events to
    attend with my dog",
  email: "dani@roby.com",
  password: "123456"
  })
daniel.photo.attach(io: user_image_url, filename: "ud7lj5pisqlcbjhnru1t.png", content_type: "image/png")
daniel.save
puts daniel.email

user_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662368560/71086635_10156517273123513_1258792263769653248_n_qe31uw.jpg")
gloria = User.new({ name: "Gloria",
  location: "Guzman el Bueno",
  bio: "I just moved to Madrid with my search and rescue dog and I am looking for all
  types of activities with my dog and to meet new people",
  email: "gloria@roby.com",
  password: "123456"
  })
gloria.photo.attach(io: user_image_url, filename: "71086635_10156517273123513_1258792263769653248_n_qe31uw.png", content_type: "image/png")
gloria.save
puts gloria.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1661521609/1636971979752_t6bakf.jpg")
chus = User.new({ name: "Chus",
  location: "Usera",
  bio: "I live with my dog in Usera and we love going on hikes together in the
  outskirts of Madrid",
  email: "chus@roby.com",
  password: "123456"
  })
chus.photo.attach(io: user_image_url, filename: "1636971979752_t6bakf.png", content_type: "image/png")
chus.save
puts chus.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662368591/PME_6068-3_ndd7us.jpg")
felipe = User.new({ name: "Felipe",
  location: "Cruz del Rayo",
  bio: "I am looking for agility trainers to prepare my dog for an upcoming competition.",
  email: "felipe@roby.com",
  password: "123456"
  })
felipe.photo.attach(io: user_image_url, filename: "PME_6068-3_ndd7us.png", content_type: "image/png")
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

user_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662564950/roby/me_gfl0ox.png")
grace = User.new({ name: "Grace",
  location: "Estrecho",
  bio: "Searching for social activites around the city for my dog and I to attend.",
  email: "Grace@roby.com",
  password: "123456",
  })
grace.photo.attach(io: user_image_url, filename: "me_gfl0ox.png", content_type: "image/png")
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

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561428/roby/dogwalk_ea9mo3.jpg")
category1 = Category.create!({ name: "Walks" })
category1.photo.attach(io: category_image_url, filename: "cld-sample.png", content_type: "image/png")
category1.save
puts "walk category with image created"

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561614/roby/dogsocial_fvcpat.jpg")
category = Category.create!({ name: "Social" })
category.photo.attach(io: category_image_url, filename: "dogs_social_nbnaag.png", content_type: "image/png")
category.save
puts "social category with image created"

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561754/roby/dogtrain_qumh1c.jpg")
category = Category.create!({ name: "Training" })
category.photo.attach(io: category_image_url, filename: "dog_training_d28rwh.png", content_type: "image/png")
category.save
puts "training category with image created"

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662562046/roby/smalldogs_gveoxm.jpg")
category = Category.create!({ name: "Small dogs" })
category.photo.attach(io: category_image_url, filename: "small_dogs_de05sg.png", content_type: "image/png")
category.save
puts "small dogs category with image created"

      Category.create!([{ name: "Medium dogs" }])
      Category.create!([{ name: "Big Dogs" }])
      Category.create!([{ name: "Puppies" }])
      puts "Created categories"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561075/roby/dogbday_mfbxsh.jpg")
activity1 = Activity.create!({ name: "Puppy Birthday",
  category: Category.all.sample.name,
  location: "Retiro Park, Madrid",
  description: "Come join Rex while celebrating his 2nd birthday!
  Party attire for dogs is strongly reccomended!",
  start_date: "12/11/2022",
  end_date: "12/11/2022",
  start_time: "11:00",
  end_time: "15:00",
  dog_limit: 10,
  people_limit: 20,
  price: 0,
  user: User.all.sample
  })
activity1.photo.attach(io: activity_image_url, filename: "puppybd.png", content_type: "image/png")
activity1.save
puts "first activity"

ActivityCategory.create(activity: activity1, category: category1)

activity_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662109734/agility_u4j8im.jpg")
activity = Activity.create!({ name: "Agility Training",
  category: Category.all.sample.name,
  location: "Berlin Park, Madrid",
  description: "Meet with experienced trainers and learn some new agility skills!",
  start_date: "08/10/22",
  end_date: "08/10/22",
  start_time: "13:00",
  end_time: "14:00",
  dog_limit: 5,
  people_limit: 5,
  price: 50,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "agility.png", content_type: "image/png")
activity.save
puts "second activity"

activity_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662109733/coffe_fyq1oi.jpg")
activity = Activity.create!({ name: "Coffees and Canines",
  category: Category.all.sample.name,
  location: "Cafe Federal, Madrid",
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
  })
activity.photo.attach(io: activity_image_url, filename: "coffees.png", content_type: "image/png")
activity.save
puts "third activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561224/roby/dogdrink_szgxiv.jpg")
activity = Activity.create!({ name: "Cocktails and Wagging Tails",
  location: "Barbara Ann, Madrid",
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
  })
activity.photo.attach(io: activity_image_url, filename: "cocktails.png", content_type: "image/png")
activity.save
puts "fourth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662109733/pups_in_the_park_pzcvps.jpg")
activity = Activity.create!({ name: "Pups in the Park",
  category: "Social",
  location: "Royal Botanical Garden, Madrid",
  description: "Enjoy your sunday with other dogs and dog lovers in the park.",
  start_date: "16/10/22",
  end_date: "16/10/22",
  start_time: "14:00",
  end_time: "19:00",
  dog_limit: 20,
  people_limit: 50,
  price: 0,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "pupspark.png", content_type: "image/png")
activity.save
puts "fifth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557196/roby/perritoparty_wcttgy.jpg")
activity = Activity.create!({ name: "Perrito Party",
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
  })
  activity.photo.attach(io: activity_image_url, filename: "party.png", content_type: "image/png")
  activity.save
  puts "Sixth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662546445/roby/puppytrain_y3gfe9.jpg")
activity=Activity.create!({ name: "Puppy Obedience Training",
    category: "Training",
    location: "Casa de Campo, Madrid",
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
  })
activity.photo.attach(io: activity_image_url, filename: "puptrain.png", content_type: "image/png")
activity.save
puts "seventh activity"


activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557380/roby/behtrain_fmxpdb.jpg")
activity=Activity.create!({ name: "Behavioral Dog Training",
  category: "Training",
  location: "Retiro Park, Madrid",
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
  })
  activity.photo.attach(io: activity_image_url, filename: "behtrain.png", content_type: "image/png")
  activity.save
  puts "eighth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557657/roby/pottytrain_y92nbo.jpg")
activity=Activity.create!({ name: "Potty Training",
  category: "Training",
  location: "Parque del Oeste, Madrid",
  description: "Learn potty training tips and skills and how to implement them with your dog.",
  start_date: "16/09/22",
  end_date: "16/09/22",
  start_time: "10:00",
  end_time: "11:00",
  dog_limit: 15,
  people_limit: 15,
  price: 10,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "pottytrain.png", content_type: "image/png")
activity.save
puts "ninth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557802/roby/leashtrain_ftfbxw.jpg")
activity = Activity.create!({ name: "Leash Training",
  category: "Training",
  location: "San Isidro Park, Madrid",
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
  })
activity.photo.attach(io: activity_image_url, filename: "leashtrain.png", content_type: "image/png")
activity.save
puts "tenth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557923/roby/casadecampodog_jtbjhb.jpg")
activity = Activity.create!({ name: "Circular Campo",
  category: "Hike",
  location: "Casa de Campo, Madrid",
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
  })
activity.photo.attach(io: activity_image_url, filename: "casadecampodog.png", content_type: "image/png")
activity.save
puts "eleventh activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558093/roby/sevenpeaksdog_hwfyth.jpg")
activity = Activity.create!({ name: "Seven Peaks",
  category: "Hike",
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
  })
activity.photo.attach(io: activity_image_url, filename: "sevenpeaksdog.png", content_type: "image/png")
activity.save
puts "twelfth activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558179/roby/doghike_yq5bkf.jpg")
activity = Activity.create!({ name: "Sierra de Guadarrama Hike",
  category: "Hike",
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
  })
activity.photo.attach(io: activity_image_url, filename: "doghike1.png", content_type: "image/png")
activity.save
puts "13th activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558501/roby/doghike2_rptajf.jpg")
activity = Activity.create!({ name: "Camino de los Campamentos",
  category: "Hike",
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
  })
activity.photo.attach(io: activity_image_url, filename: "doghike2.png", content_type: "image/png")
activity.save
puts "14th activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558423/roby/dogrio_y02wbf.jpg")
activity = Activity.create!({ name: "Madrid Rio",
  category: "Walk",
  location: "Principe Pio, Madrid",
  description: "Take a stroll along Madrid Rio in the evening. Great for all types of dogs!",
  start_date: "07/10/22",
  end_date: "07/10/22",
  start_time: "18:00",
  end_time: "19:00",
  dog_limit: 10,
  people_limit: 15,
  price: 0,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "dogrio.png", content_type: "image/png")
activity.save
puts "15th activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662559150/roby/dogcoffee_mwwhot.jpg")
activity = Activity.create!({ name: "Morning Walk and Coffee Break",
  category: "Walk",
  location: "Principe Pio, Madrid",
  description: "Take a walk around Parque de Retiro in the morning before work.
  Coffee is included in the price.",
  start_date: "13/09/22",
  end_date: "13/09/22",
  start_time: "08:00",
  end_time: "09:00",
  dog_limit: 10,
  people_limit: 15,
  price: 3,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "morningwalk.png", content_type: "image/png")
activity.save
puts "16th activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558751/roby/groupdogwalk_ytu3r1.jpg")
activity = Activity.create!({ name: "Walk on Calle Bravo Murillo",
  category: "Walk",
  location: "Cuatro Caminos, Madrid",
  description: "Take a stroll down the beautiful and peaceful Calle Bravo Murillo with us.",
  start_date: "21/09/22",
  end_date: "21/09/22",
  start_time: "19:00",
  end_time: "20:00",
  dog_limit: 5,
  people_limit: 10,
  price: 0,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "groupwalk.png", content_type: "image/png")
activity.save
puts "17th activity"

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558973/roby/sunsetdog_potezp.jpg")
activity = Activity.create!({ name: "Sunset Stroll",
  category: "Walk",
  location: "Cerro de Tio Pio, Madrid",
  description: "Take a walk around Cerro de Tio Pio park with us, and then walk up
  the hill to enjoy the sunset with great views of Madrid.",
  start_date: "22/09/22",
  end_date: "22/09/22",
  start_time: "18:30",
  end_time: "20:00",
  dog_limit: 10,
  people_limit: 15,
  price: 0,
  user: User.all.sample
  })
activity.photo.attach(io: activity_image_url, filename: "sunsetwalk.png", content_type: "image/png")
activity.save
puts "18th activity"

  puts "creating chatroom"
  general = Chatroom.new(name: "General chat")
  general.save
