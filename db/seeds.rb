#All data going NUKULAR
User.destroy_all
Item.destroy_all
BarterItem.destroy_all
Barter.destroy_all

#User data
rob = User.find_or_create_by(name: "Rob", email: "rob@gmail.com")
alyssa = User.find_or_create_by(name: "Alyssa", email: "alyssa@gmail.com")
cal = User.find_or_create_by(name: "Cal", email: "cal@gmail.com")
chris = User.find_or_create_by(name: "Chris", email: "chris@gmail.com")

#Item data
back = Item.find_or_create_by(user: rob, name: "Back To The Future DVD", image_url: "https://images-na.ssl-images-amazon.com/images/I/91-ts%2BM8slL._SL1500_.jpg", views: 0)
ff3 = Item.find_or_create_by(user: rob, name: "Final Fantasy 3", image_url: "https://www.goombastomp.com/wp-content/uploads/2016/08/36291.jpg", views: 25)
necklace = Item.find_or_create_by(user: alyssa, name: "Bling Bling Ice", image_url: "http://cdn.shopify.com/s/files/1/0682/7545/products/C10989_grande.jpg?v=1428031297", views: 50)
choco = Item.find_or_create_by(user: cal, name: "Chocko Milk!", image_url: "https://www.vaporfi.com/media/catalog/product/cache/9/thumbnail/600x600/9df78eab33525d08d6e5fb8d27136e95/c/h/choc_milk.jpg", views: 1)
blackshirt = Item.find_or_create_by(user: chris, name: "Black Shirt", image_url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1544480562-buck-mason-black-crew-slub-750x750-thumb-3062c830-6255-4772-a6f2-0722256fda92-1000x1000-1544480553.jpg", views: 900)
grapple = Item.find_or_create_by(user: alyssa, name: "Batman Hook", image_url: "https://images-na.ssl-images-amazon.com/images/I/61GeFVpGl1L._SL1200_.jpg", views: 777)

#Barter and associations
barter1 = Barter.find_or_create_by(description: "Respectfully request Grappling Hook", message: "My rare FF3 and DVD for your hook!", sender: rob, recipient: alyssa)
BarterItem.find_or_create_by(barter: barter1, item: ff3)
BarterItem.find_or_create_by(barter: barter1, item: back)
BarterItem.find_or_create_by(barter: barter1, item: grapple)

barter2 = Barter.find_or_create_by(description: "Blackshirt is nice", message: "Offering my prized chocko milk", sender: cal, recipient: chris)
BarterItem.find_or_create_by(barter: barter2, item: choco)
BarterItem.find_or_create_by(barter: barter2, item: blackshirt)

barter3 = Barter.find_or_create_by(description: "Need some ice", message: "Blackshirt for bling", sender: chris, recipient: alyssa)
BarterItem.find_or_create_by(barter: barter3, item: blackshirt)
BarterItem.find_or_create_by(barter: barter3, item: necklace)
