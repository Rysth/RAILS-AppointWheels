require 'faker'

# Creating users
User.create(name: 'John', email: 'johnpalacios.t@gmail.com', password: '123456', role: 'admin')
User.create(name: 'Ismael', email: 'mastronardiismael@gmail.com', password: '123456', role: 'admin')
User.create(name: 'Karim', email: 'karimdavid07@gmail.com', password: '123456', role: 'admin')
User.create(name: 'Soban', email: 'Soban.syeed@gmail.com', password: '123456', role: 'admin')
User.create(name: 'test', email: 'test@gmail.com', password: '123456', role: 'user')

# Creating Cars
Car.create(model: 'Corolla', seats: 4, description: "The Toyota Corolla isn't here to wow or excite. Instead, it offers a safe predictable ride no matter how far the trip is.", price_per_day: 125.25, vehicle_type: 'Sedan', image_url: 'https://www.motortrend.com/uploads/sites/10/2019/03/2020-toyota-corolla-le-sedan-angular-front.png')
Car.create(model: 'Camry', seats: 4, description: "It might not be the most exciting choice, but the Toyota Camry is popular for its affordability, spaciousness, and efficiency.", price_per_day: 150.00, vehicle_type: 'Sedan', image_url: 'https://jzheng100823.github.io/hicproj/images/ToyotaCamry.png')
Car.create(model: 'Land Cruiser', seats: 5, description: "When it's time to hit the trail, the Land Cruiser has the equipment to tackle the rough stuff, including a four-wheel drive system with low-range gearing and a locking differential.", price_per_day: 315.75, vehicle_type: 'SUV', image_url: 'https://www.motortrend.com/uploads/sites/10/2016/05/2016-toyota-landcruiser-4wd-suv-angular-front.png')
Car.create(model: 'Highlander', seats: 5, description: "Toyota Highlanders have taken the shotgun approach to the mid-size SUV segment, offering myriad trims, standard and hybrid powertrains, and front- or all-wheel drive.", price_per_day: 225.15, vehicle_type: 'SUV', image_url: 'https://images.dealer.com/ddc/vehicles/2023/Toyota/Highlander/SUV/perspective/front-left/2023_24.png')
Car.create(model: 'Alphard', seats: 6, description: "The Toyota Alphard is a luxury MPV that offers spacious comfort, smooth performance, and advanced safety features for executive travelers and families.", price_per_day: 300.50, vehicle_type: 'Van', image_url: 'https://www.kenaapa.id/wp-content/uploads/2019/08/alphard.png')
Car.create(model: 'Hiace', seats: 6, description: "Now more robust-looking than ever, the Toyota Hiace still remains to be one of the most trusted vans as far as Filipino families are concerned.", price_per_day: 200.35, vehicle_type: 'Van', image_url: 'https://freepngclipart.com/download/toyota/76629-innova-van-minivan-toyota-hiace-png-free-photo.png')
