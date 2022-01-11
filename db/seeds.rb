# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1=User.create(full_name: "Aristela Marku", email: "a.gmail.com")
Oldtrip.create(title:"Venice", description: "My first time in Italy - amazing",comments: " I will visit it again", rating: 5,visitDate:"07/03/2020", latitude:45.4408, longitude: 12.3155,image: "https://media.istockphoto.com/photos/venice-picture-id491391396?k=20&m=491391396&s=612x612&w=0&h=x_DafAdt7Bx_QtZ0oDdzkYC3LmFeXK-iftLdWl6gX8I=", user_id:User.first.id)
Oldtrip.create(title:"Budapest", description: "Beautifull city",comments: "To many things to visit", rating: 5,visitDate:"07/03/2020", latitude:47.4979, longitude: 19.0402,image: "https://media.gq-magazine.co.uk/photos/5daf29d843196300087c8a24/master/pass/20191022-Budapest-01.jpg", user_id:User.first.id)
Oldtrip.create(title:"Miami", description: "Really nice and big beach, US Style",comments: "water was great - green", rating: 4,visitDate:"07/03/2020", latitude:25.7823404, longitude: -80.3695441,image: "https://q-xx.bstatic.com/xdata/images/hotel/840x460/120829214.jpg?k=b02ddf9ff07371316dbec86df379e2ed219d7cf2dabfa6cab5153476349073d1&o=", user_id:User.first.id)
Oldtrip.create(title:"Yosemite", description: "Put down your camera long enough to enjoy the views.",comments: "Spectacular view", rating: 5, visitDate:"07/03/2020",latitude:37.851981, longitude:-120.1115568,image: "https://www.nps.gov/yose/planyourvisit/images/20170618_155330.jpg?maxwidth=1200&maxheight=1200&autorotate=false", user_id:User.first.id)
Oldtrip.create(title:"Grand Canyon", description: "Beautiful to see and take pictures of",comments: "Amazing Views!", rating: 5,visitDate:"07/03/2020", latitude:36.0604, longitude:-112.1076,image: "https://www.nps.gov/grca/planyourvisit/images/8231-weather02a_2.jpg?maxwidth=650&autorotate=false", user_id:User.first.id)

Oldtrip.create(title:"Rocky Mountain ", description: "Never disappointing visiting Rocky National Park ",comments: "Amazing Views!", rating: 4,visitDate:"07/03/2020", latitude:40.3493861, longitude:-106.235545,image: "https://cdn.aarp.net/content/dam/aarp/travel/Domestic/2020/07/1140-rocky-mountain-national-park.jpg", user_id:User.first.id)
Oldtrip.create(title:"New Yourk", description: "City that never sleeps ",comments: "So many things to visit", rating: 5,visitDate:"07/03/2020", latitude:40.6961397, longitude:-74.5387465,image: "https://i.natgeofe.com/k/5b396b5e-59e7-43a6-9448-708125549aa1/new-york-statue-of-liberty_16x9.jpg", user_id:User.first.id)
Oldtrip.create(title:"Great Wall", description: "The Great Wall really does deserve to be one of the seven wonders",comments: "Amazing experience", rating: 5,visitDate:"07/03/2020", latitude:40.4319074, longitude:116.5616416,image: "https://windows10spotlight.com/wp-content/uploads/2020/11/e347d88249bc21787efa86ce38349947.jpg", user_id:User.first.id)
Oldtrip.create(title:"Havana,Cuba", description: "The more time we spent the more beauty we saw",comments: "Amazing Views!", rating: 4,visitDate:"07/03/2020", latitude:23.05096, longitude:-82.8921043,image: "https://media.istockphoto.com/photos/cityscape-with-american-green-vintage-car-on-the-main-street-in-city-picture-id927077190?k=20&m=927077190&s=612x612&w=0&h=JZBMegAi0K7378nZg00PiN8sUQV5Ma3gtbOwwx_5DeQ=", user_id:User.first.id)
Oldtrip.create(title:"Zanzibar", description: "Its got everything from historical sites of Stonetown to the Paradise beachs",comments: "Zanzibar - Paradise", rating: 4,visitDate:"07/03/2020", latitude:-6.1644191, longitude:39.1608036,image: "https://travelsquire.com/ts/wp-content/uploads/2011/06/Zanzibar-Tanzania-e1455034608949.jpg", user_id:User.first.id)
Oldtrip.create(title:"London", description: " London is a walking town",comments: "Charming London", rating: 5,visitDate:"07/03/2020", latitude:51.5281678, longitude:-0.6606446,image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwVBuYes9vd88Ei9oHaAI_4EX3lQtceRTcCXnm_lpTHLTFC5mpBt6M5Atmsh7sOI-VV2c&usqp=CAU", user_id:User.first.id)

Oldtrip.create(title:"Sydney", description: " Sydney Australia is spectacular,especially in Summer",comments: "Beautiful", rating: 5,visitDate:"07/03/2020", latitude:-33.8458351, longitude:150.371526,image: "https://www.cunard.com/content/dam/cunard/inventory-assets/ports/SYD/yqy.jpg.1538745208398.image.750.563.low.jpg", user_id:User.first.id)

Oldtrip.create(title:"New Delhi", description: " A place where right mix of culture",comments: "Beautiful", rating: 5,visitDate:"07/03/2020", latitude:28.5276695, longitude:76.9294784,image: "https://media.istockphoto.com/photos/humayun-tomb-new-delhi-india-picture-id505239248?k=20&m=505239248&s=612x612&w=0&h=-VDBIaBQquH4MEiLgeCwzhndOAGhIBjKseW_trSmWqo=", user_id:User.first.id)
Oldtrip.create(title:"Rio de Janeiro ", description: " Very uplifting to see them and well worth the price tag",comments: "A iconic city", rating: 5,visitDate:"07/03/2020", latitude:-22.950468, longitude:-43.5738858,image: "http://7tripson.com/images/landmarks/brazil_rio_de_janeiro_big.jpg", user_id:User.first.id)
Oldtrip.create(title:"Honolulu", description: "Such a beautiful place",comments: "Amazing", rating: 5,visitDate:"07/03/2020", latitude:21.328019, longitude:-157.869113,image: "https://media.istockphoto.com/photos/honolulu-hawaii-from-above-picture-id1180083792?k=20&m=1180083792&s=612x612&w=0&h=D8-TyU6NicvFHdSUmwvX3Z6H_30vsiQmtZ8yg7QLzlI=", user_id:User.first.id)
# a1=Attractionpoint.create(name:"lala",adress:"mamam")
# Newtrip.create(city:"paris", hotel: "rrushi", user_id:u1.id, attractionpoint_id:a1.id)
puts "seed"                                                                         