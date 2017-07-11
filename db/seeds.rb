Profile.delete_all
Order.delete_all
Cart.delete_all
User.delete_all
Product.delete_all

user1 = User.create!(email:"user1@gmail.com", password:"123456")
user2 = User.create!(email:"user2@gmail.com", password:"123456")
user3 = User.create!(email:"user3@gmail.com", password:"123456")

product1 = Product.create!(name:"Cool T-shirt",
price:10,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774762/8_smoesc.jpg",
description:"")
product2 = Product.create!(name:"Not Cool T-shirt",
price:10,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774762/7_uhhat8.jpg",
description:"")
product3 = Product.create!(name:"Very Cool T-shirt",
price:10,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774762/6_z6ahwb.jpg",
description:"")
product4 = Product.create!(name:"Hot T-shirt",
price:20,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774762/9_fhjxwh.jpg",
description:"")
product5 = Product.create!(name:"Very Hot T-shirt",
price:100,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774761/5_htgye1.jpg",
description:"")
product6 = Product.create!(name:"Freezing T-shirt",
price:50,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774761/4_cx9x6m.jpg",
description:"")
product7 = Product.create!(name:"Coding T-shirt",
price:10,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774761/3_kg8vic.jpg",
description:"")
product8 = Product.create!(name:"Beer T-shirt",
price:25,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774761/2_xxfttr.png",
description:"")
product9 = Product.create!(name:"Coffe T-shirt",
price:100,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774761/2_fq2nh0.jpg",
description:"")
product10 = Product.create!(name:"Style T-shirt",
price:82,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774761/1_nhqhra.jpg",
description:"")
product1 = Product.create!(name:"Rails T-shirt",
price:60,
remote_image_url:"http://res.cloudinary.com/supermay/image/upload/v1499774762/10_e2fg9b.jpg",
description:"")

profile1 = Profile.create!(first_name:"Sam",
last_name:"Sam",
address:"London",
telephone:"06-12345678",
user: user1)
profile1 = Profile.create!(first_name:"Ismail",
last_name:"Ismail",
address:"Den Bosch",
telephone:"06-65412387",
user: user2)
profile1 = Profile.create!(first_name:"Terasa",
last_name:"May",
address:"London",
telephone:"06-88855522",
user: user3)



cart1 = Cart.create!(user: user1)
cart2 = Cart.create!(user: user2)
cart3 = Cart.create!(user: user3)




order1 = Order.create!(
cart: cart1,
product: product9,
quantity: 1
)


order1 = Order.create!(
cart: cart2,
product: product8,
quantity: 2
)


order1 = Order.create!(
cart: cart3,
product: product6,
quantity: 3
)
