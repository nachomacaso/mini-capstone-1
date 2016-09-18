Product.create!([
  {name: "Sonic Screwdriver", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", price: "9.0", supplier_id: 3},
  {name: "WNYX Mug", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", price: "2.0", supplier_id: 2},
  {name: "Hitchhiker's Guide to the Galexy", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.", price: "42.0", supplier_id: 3},
  {name: "Lightsaber", description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", price: "5000.0", supplier_id: 2},
  {name: "Space Cowboy Laser Gun", description: "This weapon has no other description than, Shiney!", price: "230.0", supplier_id: 1},
  {name: "DnD Dice set", description: "Take down mighty dragons with this timeless set of 20 sided wonders", price: "102.0", supplier_id: 3},
  {name: "revenge of the jedi poster", description: "it's poster, you should buy it.", price: "15.0", supplier_id: 1},
  {name: "princess bride t-shirt", description: "they are shirts, you should buy them", price: "5.0", supplier_id: 2}
])

CategoryProduct.create!([
  {product_id: 4,category_id: 1},
  {product_id: 8,category_id: 1},
  {product_id: 2,category_id: 2},
  {product_id: 4,category_id: 2},
  {product_id: 5,category_id: 2},
  {product_id: 6,category_id: 2},
  {product_id: 7,category_id: 2},
  {product_id: 6,category_id: 3},
  {product_id: 1,category_id: 4},
  {product_id: 2,category_id: 4},
  {product_id: 3,category_id: 4},
  {product_id: 4,category_id: 4},
  {product_id: 5,category_id: 4},
  {product_id: 6,category_id: 4},
  {product_id: 7,category_id: 4},
  ])
  

Category.create!([
  {name: "wearable"},
  {name: "collectible"},
  {name: "game"},
  {name: "waste money"}
])

Image.create!([
  {url: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg", product_id: 1},
  {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", product_id: 2},
  {url: "http://www.notcot.com/images/guide.gif", product_id: 3},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 4},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 5},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 6},
  {url: "https://i.ytimg.com/vi/p2iUzSjyue0/maxresdefault.jpg", product_id: 4},
  {url: "https://timeentertainment.files.wordpress.com/2013/05/film_poster_revenge_of_the_jedi.jpg?w=480&h=320&crop=1", product_id: 7}
])
Order.create!([
  {user_id: 1, product_id: 2, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 244, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 3, quantity: 3, subtotal: "126.0", tax: "11.34", total: "137.34"},
  {user_id: 1, product_id: 1, quantity: 4, subtotal: "36.0", tax: "3.24", total: "39.24"},
  {user_id: 1, product_id: 1, quantity: 15, subtotal: "135.0", tax: "12.15", total: "147.15"},
  {user_id: 1, product_id: 7, quantity: 2, subtotal: "30.0", tax: "2.7", total: "32.7"}
])
Supplier.create!([
  {name: "jedis for younglings", email: "obyoung@gmail.com", phone: "777-777-7777"},
  {name: "dumbledore's electronic", email: "expelliarmus@hogwarts.edu", phone: "9.5"},
  {name: "comicbook guy's functional clothing", email: "kevinsmith@gmail.com", phone: "999-555-1111"}
])
User.create!([
  {name: "joe", email: "joe@gmail.com", password_digest: "$2a$10$mu.QTHX6JrZXeCjla/M9J.1SUlaa66HaWSvn2mhWGdasnL3Dt0hIO"}
])
