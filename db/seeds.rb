User.destroy_all
Dog.destroy_all
Activity.destroy_all
Category.destroy_all
puts "database_clean"
require "open-uri"


#------------------------------USERS----------------------------------#
user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662623529/gonzalo_pic_n7mhmc.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662630849/DOGS%20PICTURES/BACKGROUND_PIC_2_raroc7.jpg")
gonzalo = User.new({ name: "Gonzalo",
  location: "Legazpi",
  bio: "I love exploring the city with my family and dog!",
  email: "gonzalo@roby.com",
  password: "123456"
  })
gonzalo.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_2_raroc7.png", content_type: "image/png")
gonzalo.photo.attach(io: user_image_url, filename: "gonzalo_pic_n7mhmc.png", content_type: "image/png")
gonzalo.save
puts gonzalo.email

user_image_url = URI.open("https://res.cloudinary.com/dlanz/image/upload/v1662380770/production/ud7lj5pisqlcbjhnru1t.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662631310/DOGS%20PICTURES/BACKGROUND_PIC_3_yplsuo.jpg")
daniel = User.new({ name: "Daniel",
  location: "Concepcion",
  bio: "I just moved to Madrid and I am hoping to find social events to
    attend with my dog",
  email: "dani@roby.com",
  password: "123456"
  })
daniel.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_3_yplsuo.png", content_type: "image/png")
daniel.photo.attach(io: user_image_url, filename: "ud7lj5pisqlcbjhnru1t.png", content_type: "image/png")
daniel.save
puts daniel.email


user_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662368560/71086635_10156517273123513_1258792263769653248_n_qe31uw.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662630593/DOGS%20PICTURES/IMG_0062_ub8uye.jpg")
gloria = User.new({ name: "Gloria",
  location: "Guzman el Bueno",
  bio: "I just moved to Madrid with my search and rescue dog and I am looking for all
  types of activities with my dog and to meet new people",
  email: "gloria@roby.com",
  password: "123456"
  })
gloria.banner_photo.attach(io: banner_photo_image_url, filename: "IMG_0062_ub8uye.png", content_type: "image/png")
gloria.photo.attach(io: user_image_url, filename: "71086635_10156517273123513_1258792263769653248_n_qe31uw.png", content_type: "image/png")
gloria.save
puts gloria.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1661521609/1636971979752_t6bakf.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662631310/DOGS%20PICTURES/BACKGROUND_PIC_3_yplsuo.jpg")
chus = User.new({ name: "Chus",
  location: "Usera",
  bio: "I live with my dog in Usera and we love going on hikes together in the
  outskirts of Madrid",
  email: "chus@roby.com",
  password: "123456"
  })
chus.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_3_yplsuo.png", content_type: "image/png")
chus.photo.attach(io: user_image_url, filename: "1636971979752_t6bakf.png", content_type: "image/png")
chus.save
puts chus.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662368591/PME_6068-3_ndd7us.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662632002/background_pic_7_h1nvno.jpg")
felipe = User.new({ name: "Felipe",
  location: "Cruz del Rayo",
  bio: "I am looking for agility trainers to prepare my dog for an upcoming competition.",
  email: "felipe@roby.com",
  password: "123456"
  })
felipe.banner_photo.attach(io: banner_photo_image_url, filename: "background_pic_7_h1nvno.png", content_type: "image/png")
felipe.photo.attach(io: user_image_url, filename: "PME_6068-3_ndd7us.png", content_type: "image/png")
felipe.save
puts felipe.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662623598/emi_pic_agukpb.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662630849/DOGS%20PICTURES/BACKGROUND_PIC_2_raroc7.jpg")
emi = User.new({ name: "Emi",
  location: "Sainz de Baranda",
  bio: "Looking for nearby dog owners to join me and my dog on evening walks.",
  email: "Emi@roby.com",
  password: "123456"
  })
emi.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_2_raroc7.png", content_type: "image/png")
emi.photo.attach(io: user_image_url, filename: "emi_pic_agukpb.png", content_type: "image/png")
emi.save
puts emi.email


user_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662564950/roby/me_gfl0ox.png")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662631310/DOGS%20PICTURES/BACKGROUND_PIC_3_yplsuo.jpg")
grace = User.new({ name: "Grace",
  location: "Estrecho",
  bio: "Searching for social activites around the city for my dog and I to attend.",
  email: "Grace@roby.com",
  password: "123456",
  })
grace.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_3_yplsuo.png", content_type: "image/png")
grace.photo.attach(io: user_image_url, filename: "me_gfl0ox.png", content_type: "image/png")
grace.save
puts grace.email


user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662623529/marcos_pic_zsjkv0.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662631726/background_pic_5_edcpgx.jpg")
marcos = User.new({ name: "Marcos",
  location: "Moncloa",
  bio: "I miss spending time around dogs so I am looking for social events so I can make
  friends and also spend time with dogs.",
  email: "Marcos@roby.com",
  password: "123456"
  })
marcos.banner_photo.attach(io: banner_photo_image_url, filename: "background_pic_5_edcpgx.png", content_type: "image/png")
marcos.photo.attach(io: user_image_url, filename: "me_gfl0ox.png", content_type: "image/png")
marcos.save
puts marcos.email

banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662631287/DOGS%20PICTURES/BACKGROUND_PIC_4_iuhxic.jpg")
user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662623529/juan_pic_b3a0xh.jpg")
juan = User.new({ name: "Juan",
  location: "Arguelles",
  bio: "I just got a puppy and I am looking for training events to meet other puppies",
  email: "Juan@roby.com",
  password: "123456"
  })
juan.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_4_iuhxic.png", content_type: "image/png")
juan.photo.attach(io: user_image_url, filename: "juan_pic_b3a0xh.png", content_type: "image/png")
juan.save
puts juan.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662623598/fanny_pic_tc2x2d.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662630849/DOGS%20PICTURES/BACKGROUND_PIC_2_raroc7.jpg")
fanny = User.new({ name: "Fanny",
  location: "Cuatro Caminos",
  bio: "I don't have a dog but I love being around them,
  so I am looking for social events to make friends with dogs!",
  email: "fanny@roby.com",
  password: "123456"
  })
fanny.banner_photo.attach(io: banner_photo_image_url, filename: "BACKGROUND_PIC_2_raroc7.png", content_type: "image/png")
fanny.photo.attach(io: user_image_url, filename: "fanny_pic_tc2x2d.png", content_type: "image/png")
fanny.save
puts fanny.email

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662623529/maria_pic_by3v1a.jpg")
banner_photo_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662631960/background_pic_6_c5bkvf.jpg")
maria = User.new({ name: "Maria",
  location: "Tetuan",
  bio: "I just moved to Madrid with my dog and we love going on walks and going to
  the dog park.",
  email: "maria@roby.com",
  password: "123456"
  })
maria.banner_photo.attach(io: banner_photo_image_url, filename: "background_pic_6_c5bkvf.png", content_type: "image/png")
maria.photo.attach(io: user_image_url, filename: "maria_pic_by3v1a.png", content_type: "image/png")
maria.save
puts maria.email

#------------------------------USERS----------------------------------#

#------------------------------DOGS----------------------------------#

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662628443/DOGS%20PICTURES/Gonzalo_pic_exlqng.png")
jager = Dog.new({ name: "Jager",
  breed: "Ratonero Bodeguero Andaluz",
  description: "He is a very friendly, social and active dog.",
  user_id: gonzalo.id,
  age: 2,
  sex: "male",
  })
jager.photo.attach(io: user_image_url, filename: "Gonzalo_pic_exlqng.png", content_type: "image/png")
jager.save
puts jager.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662628029/DOGS%20PICTURES/Dani_Dog_ut3a6c.jpg")
roby = Dog.new({ name: "Roby",
  breed: "Schnauzer",
  description: "Very energetic dog who sometimes gets nervous around other dogs.",
  user_id: daniel.id,
  age: 5,
  sex: "male"
  })
roby.photo.attach(io: user_image_url, filename: "Dani_Dog_ut3a6c.png", content_type: "image/png")
roby.save
puts roby.name

user_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662628028/images_37_kdfy4a.jpg")
golfo = Dog.new({ name: "Golfo",
  breed: "Dalmation",
  description: "Sporty and friendly dog who love hikes and activities. Gets along
  well with all dogs!",
  user_id: gloria.id,
  age: 1,
  sex: "male"
  })
golfo.photo.attach(io: user_image_url, filename: "images_37_kdfy4a.png", content_type: "image/png")
golfo.save
puts golfo.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662627737/DOGS%20PICTURES/photo_2022-09-08_10-58-31_md5d2s.jpg")
jack = Dog.new({ name: "Jack",
  breed: "Australian Shepherd",
  description: "Very energetic and loves being outside and hiking.",
  user_id: chus.id,
  age: 3,
  sex: "male"
  })
jack.photo.attach(io: user_image_url, filename: "photo_2022-09-08_10-58-31_md5d2s.png", content_type: "image/png")
jack.save
puts jack.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662627945/DOGS%20PICTURES/Felipe_dog_1_xmwhe3.jpg")
puka = Dog.new({ name: "Puka",
  breed: "Golden Retriever",
  description: "Sporty and friendly dog.",
  user_id: felipe.id,
  age: 2,
  sex: "male",
  })
puka.photo.attach(io: user_image_url, filename: "Felipe_dog_1_xmwhe3.png", content_type: "image/png")
puka.save
puts puka.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662629765/DOGS%20PICTURES/emi_dog_w42wow.png")
carlota = Dog.new({ name: "Carlota",
  breed: "Yorkshire Terrier Mix",
  description: "She is a very small dog who loves food. She sometimes is nervous
  around new dogs and people but is friendly once she is used to them. She loves going
  on short walks around the city.",
  user_id: emi.id,
  age: 5,
  sex: "female",
  })
carlota.photo.attach(io: user_image_url, filename: "emi_dog_w42wow.png", content_type: "image/png")
carlota.save
puts carlota.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662629273/DOGS%20PICTURES/juan_dog_rhcj2c.jpg")
chata = Dog.new({ name: "Chata",
  breed: "Yorkshire Terrier",
  description: "She is a puppy who is very energetic, but has not been around other dogs
  much yet.",
  user_id: juan.id,
  age: 0,
  sex: "female"
  })
chata.photo.attach(io: user_image_url, filename: "juan_dog_rhcj2c.png", content_type: "image/png")
chata.save
puts chata.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662629071/DOGS%20PICTURES/fanny_dog_xzpaow.jpg")
lola = Dog.new({ name: "Lola",
  breed: "Poodle",
  description: "She is an older dog who loves going on walks and attending social events.
  She is friendly with other dogs but is sometimes scared of dogs who are bigger than her.",
  user_id: fanny.id,
  age: 8,
  sex: "female"
  })
lola.photo.attach(io: user_image_url, filename: "fanny_dog_xzpaow.png", content_type: "image/png")
lola.save
puts lola.name

user_image_url = URI.open("https://res.cloudinary.com/mlutterb/image/upload/v1662628499/IMG-20220704-WA0002_nbc44p.jpg")
guga = Dog.new({ name: "Guga",
  breed: "Shibu Inu",
  description: "He is an older dog who loves going on walks and attending social events.
  She is friendly with other dogs but is sometimes scared of dogs who are bigger than her.",
  user_id: marcos.id,
  age: 8,
  sex: "male"
  })
guga.photo.attach(io: user_image_url, filename: "IMG-20220704-WA0002_nbc44p.png", content_type: "image/png")
guga.save
puts guga.name

user_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662629782/DOGS%20PICTURES/maria_dog_nw3dfk.jpg")
benji = Dog.new({ name: "Benji",
  breed: "Collie",
  description: "Benji is a friendly dog and loves playing fetch and meeting other dogs.",
  user_id: maria.id,
  age: 0,
  sex: "male"
  })
benji.photo.attach(io: user_image_url, filename: "maria_dog_nw3dfk.png", content_type: "image/png")
benji.save
puts benji.name

#------------------------------DOGS----------------------------------#

#------------------------------CATEGORIES----------------------------------#

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561428/roby/dogwalk_ea9mo3.jpg")
category1 = Category.create!({ name: "Walk" })
category1.photo.attach(io: category_image_url, filename: "cld-sample.png", content_type: "image/png")
category1.save
puts "walk category with image created"

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561614/roby/dogsocial_fvcpat.jpg")
category2 = Category.create!({ name: "Social" })
category2.photo.attach(io: category_image_url, filename: "dogs_social_nbnaag.png", content_type: "image/png")
category2.save
puts "social category with image created"

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561754/roby/dogtrain_qumh1c.jpg")
category3 = Category.create!({ name: "Training" })
category3.photo.attach(io: category_image_url, filename: "dog_training_d28rwh.png", content_type: "image/png")
category3.save
puts "training category with image created"

category_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662562046/roby/smalldogs_gveoxm.jpg")
category4 = Category.create!({ name: "Small dogs" })
category4.photo.attach(io: category_image_url, filename: "small_dogs_de05sg.png", content_type: "image/png")
category4.save
puts "small dogs category with image created"

category5 = Category.create!({ name: "Medium dogs" })
category5.save
category6 = Category.create!({ name: "Big Dogs" })
category6.save
category7 = Category.create!({ name: "Puppies" })
category7.save
puts "Created categories"

#------------------------------CATEGORIES----------------------------------#

#------------------------------ACTIVITIES----------------------------------#
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
  dog_limit: "10",
  people_limit: "20",
  price: 0,
  user: User.all.sample
  })
activity1.photo.attach(io: activity_image_url, filename: "puppybd.png", content_type: "image/png")
activity1.save
puts "first activity"

ActivityCategory.create(activity: activity1, category: category1)
ActivityCategory.create(activity: activity1, category: category4)
ActivityCategory.create(activity: activity1, category: category7)

activity_image_url = URI.open("https://res.cloudinary.com/mariacend1910/image/upload/v1662640437/Dog-agility-tire-jump_resized_bsyoft.jpg")
activity2 = Activity.create!({ name: "Agility Training",
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
activity2.photo.attach(io: activity_image_url, filename: "agility.png", content_type: "image/png")
activity2.save
puts "second activity"

ActivityCategory.create(activity: activity2, category: category3)
ActivityCategory.create(activity: activity2, category: category5)
ActivityCategory.create(activity: activity2, category: category6)

activity_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662109733/coffe_fyq1oi.jpg")
activity3 = Activity.create!({ name: "Coffees and Canines",
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
activity3.photo.attach(io: activity_image_url, filename: "coffees.png", content_type: "image/png")
activity3.save
puts "third activity"

ActivityCategory.create(activity: activity3, category: category2)
ActivityCategory.create(activity: activity3, category: category4)
ActivityCategory.create(activity: activity3, category: category5)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662561224/roby/dogdrink_szgxiv.jpg")
<<<<<<< HEAD
activity = Activity.create!({ name: "Cocktails and Wagging Tails",
  location: "Barbara Ann, Madrid",
=======
activity4 = Activity.create!({ name: "Cocktails and Wagging Tails",
  location: "Antonio López Street, Madrid",
>>>>>>> 5527dfe... finish all seeeeeeeeeeeeds
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
activity4.photo.attach(io: activity_image_url, filename: "cocktails.png", content_type: "image/png")
activity4.save
puts "fourth activity"

ActivityCategory.create(activity: activity4, category: category2)
ActivityCategory.create(activity: activity4, category: category4)
ActivityCategory.create(activity: activity4, category: category5)

activity_image_url = URI.open("https://res.cloudinary.com/dbksvt70i/image/upload/v1662109733/pups_in_the_park_pzcvps.jpg")
activity5 = Activity.create!({ name: "Pups in the Park",
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
activity5.photo.attach(io: activity_image_url, filename: "pupspark.png", content_type: "image/png")
activity5.save
puts "fifth activity"

ActivityCategory.create(activity: activity5, category: category1)
ActivityCategory.create(activity: activity5, category: category2)
ActivityCategory.create(activity: activity5, category: category7)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557196/roby/perritoparty_wcttgy.jpg")
activity6 = Activity.create!({ name: "Perrito Party",
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
activity6.photo.attach(io: activity_image_url, filename: "party.png", content_type: "image/png")
activity6.save
puts "Sixth activity"

ActivityCategory.create(activity: activity6, category: category2)
ActivityCategory.create(activity: activity6, category: category4)


activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662546445/roby/puppytrain_y3gfe9.jpg")
activity7 = Activity.create!({ name: "Puppy Obedience Training",
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
activity7.photo.attach(io: activity_image_url, filename: "puptrain.png", content_type: "image/png")
activity7.save
puts "seventh activity"
ActivityCategory.create(activity: activity7, category: category3)
ActivityCategory.create(activity: activity7, category: category7)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557380/roby/behtrain_fmxpdb.jpg")
activity8 = Activity.create!({ name: "Behavioral Dog Training",
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
activity8.photo.attach(io: activity_image_url, filename: "behtrain.png", content_type: "image/png")
activity8.save
puts "eighth activity"
ActivityCategory.create(activity: activity8, category: category3)
ActivityCategory.create(activity: activity8, category: category4)
ActivityCategory.create(activity: activity8, category: category5)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557657/roby/pottytrain_y92nbo.jpg")
activity9 = Activity.create!({ name: "Potty Training",
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
activity9.photo.attach(io: activity_image_url, filename: "pottytrain.png", content_type: "image/png")
activity9.save
puts "ninth activity"
ActivityCategory.create(activity: activity9, category: category3)
ActivityCategory.create(activity: activity9, category: category7)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557802/roby/leashtrain_ftfbxw.jpg")
activity10 = Activity.create!({ name: "Leash Training",
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
activity10.photo.attach(io: activity_image_url, filename: "leashtrain.png", content_type: "image/png")
activity10.save
puts "tenth activity"
ActivityCategory.create(activity: activity10, category: category3)
ActivityCategory.create(activity: activity10, category: category4)
ActivityCategory.create(activity: activity10, category: category5)
ActivityCategory.create(activity: activity10, category: category6)
ActivityCategory.create(activity: activity10, category: category7)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662557923/roby/casadecampodog_jtbjhb.jpg")
activity11 = Activity.create!({ name: "Circular Campo",
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
activity11.photo.attach(io: activity_image_url, filename: "casadecampodog.png", content_type: "image/png")
activity11.save
puts "eleventh activity"
ActivityCategory.create(activity: activity11, category: category1)
ActivityCategory.create(activity: activity11, category: category5)
ActivityCategory.create(activity: activity11, category: category6)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558093/roby/sevenpeaksdog_hwfyth.jpg")
activity12 = Activity.create!({ name: "Seven Peaks",
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
activity12.photo.attach(io: activity_image_url, filename: "sevenpeaksdog.png", content_type: "image/png")
activity12.save
puts "twelfth activity"
ActivityCategory.create(activity: activity12, category: category1)
ActivityCategory.create(activity: activity12, category: category5)
ActivityCategory.create(activity: activity12, category: category6)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558179/roby/doghike_yq5bkf.jpg")
activity13 = Activity.create!({ name: "Sierra de Guadarrama Hike",
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
activity13.photo.attach(io: activity_image_url, filename: "doghike1.png", content_type: "image/png")
activity13.save
puts "13th activity"
ActivityCategory.create(activity: activity13, category: category1)
ActivityCategory.create(activity: activity13, category: category5)
ActivityCategory.create(activity: activity13, category: category6)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558501/roby/doghike2_rptajf.jpg")
activity14 = Activity.create!({ name: "Camino de los Campamentos",
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
activity14.photo.attach(io: activity_image_url, filename: "doghike2.png", content_type: "image/png")
activity14.save
puts "14th activity"
ActivityCategory.create(activity: activity14, category: category1)
ActivityCategory.create(activity: activity14, category: category5)
ActivityCategory.create(activity: activity14, category: category6)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558423/roby/dogrio_y02wbf.jpg")
activity15 = Activity.create!({ name: "Madrid Rio",
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
activity15.photo.attach(io: activity_image_url, filename: "dogrio.png", content_type: "image/png")
activity15.save
puts "15th activity"
ActivityCategory.create(activity: activity15, category: category1)
ActivityCategory.create(activity: activity15, category: category4)
ActivityCategory.create(activity: activity15, category: category5)
ActivityCategory.create(activity: activity15, category: category6)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662559150/roby/dogcoffee_mwwhot.jpg")
activity16 = Activity.create!({ name: "Morning Walk and Coffee Break",
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
activity16.photo.attach(io: activity_image_url, filename: "morningwalk.png", content_type: "image/png")
activity16.save
puts "16th activity"
ActivityCategory.create(activity: activity16, category: category1)
ActivityCategory.create(activity: activity16, category: category2)
ActivityCategory.create(activity: activity16, category: category4)
ActivityCategory.create(activity: activity16, category: category5)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558751/roby/groupdogwalk_ytu3r1.jpg")
activity17 = Activity.create!({ name: "Walk on Calle Bravo Murillo",
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
activity17.photo.attach(io: activity_image_url, filename: "groupwalk.png", content_type: "image/png")
activity17.save
puts "17th activity"
ActivityCategory.create(activity: activity17, category: category1)
ActivityCategory.create(activity: activity17, category: category4)
ActivityCategory.create(activity: activity17, category: category5)

activity_image_url = URI.open("https://res.cloudinary.com/dfbhewkkh/image/upload/v1662558973/roby/sunsetdog_potezp.jpg")
activity18 = Activity.create!({ name: "Sunset Stroll",
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
activity18.photo.attach(io: activity_image_url, filename: "sunsetwalk.png", content_type: "image/png")
activity18.save
puts "18th activity"
ActivityCategory.create(activity: activity18, category: category1)
ActivityCategory.create(activity: activity18, category: category4)
ActivityCategory.create(activity: activity18, category: category5)

  puts "creating chatroom"
  general = Chatroom.new(name: "General chat")
  general.save
