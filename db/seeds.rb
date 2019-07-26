# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  {name: 'Cristian Canales', email: 'cristian@papinotas.com', phone: '979459616', link: nil},
  {name: 'Juan Pablo  Fernández', email: 'juan@papinotas.com', phone: '975362416', link: nil},
  {name: 'Javiera Prado', email: 'javiera@papinotas.com', phone: '942170594', link: nil}
]
User.create(users)

categories = [
  {name: 'Embelecos'},
  {name: 'Almuerzos'},
  {name: 'Hogar'}
]
Category.create(categories)

products = [
  {
    title: 'Cuchufí',
    description: 'Ricos y sabrosos cuchuflíes que hace mi hermana. Los costos son: 5 x $ 1000, 10 x $ 1500',
    category_id: Category.find_by(name: 'Embelecos').id,
    user_id: User.find_by(email: 'cristian@papinotas.com').id,
    stock: 30,
    expiration_date: Date.parse("2019-12-10")
  },
  {
    title: 'Almuerzos del Che',
    description: 'Me gusta comer rico, asi que cocino cosas que me gusta mucho comer y las vendo para los que gusten. Los costos son: $ 2000 ($ 1000 con la compra de un menú)',
    category_id: Category.find_by(name: 'Almuerzos').id,
    user_id: User.find_by(email: 'juan@papinotas.com').id,
    stock: 20,
    expiration_date: Date.parse("2019-12-10")
  },
  {
    title: 'Roomi',
    description: 'Productos para el hogar que respetan el medio ambiente. Detergente biodegradable 3L a $ 3800. Lavalozas biodegradable 500 cc a $ 1000. Ampolletas led 10W. $ 2500. Colgadores x 10U a $ 2500. Pack de Bolsas para el carrito del super a $10000. Exprimidor de madera a $1500',
    category_id: Category.find_by(name: 'Hogar').id,
    user_id: User.find_by(email: 'javiera@papinotas.com').id,
    stock: 200,
    expiration_date: Date.parse("2019-12-10")
  }
]
Product.create(products)
