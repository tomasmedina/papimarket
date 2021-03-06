# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  {name: 'Cristian Canales', email: 'cristian@papinotas.com', phone: '979189142', link: nil},
  {name: 'Juan Pablo  Fernández', email: 'juan@papinotas.com', phone: '912345678', link: nil},
  {name: 'Javiera Prado', email: 'javiera@papinotas.com', phone: '987654321', link: nil}
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
    description: 'Ricos y sabrosos cuchuflíes',
    category_id: Category.find_by(name: 'Embelecos').id,
    user_id: User.find_by(email: 'cristian@papinotas.com').id,
    stock: 30,
    expiration_date: Date.parse("2019-12-10")
  },
  {
    title: 'Lasagna',
    description: 'Ricas y sabrosas lasañas',
    category_id: Category.find_by(name: 'Almuerzos').id,
    user_id: User.find_by(email: 'juan@papinotas.com').id,
    stock: 20,
    expiration_date: Date.parse("2019-12-10")
  },
  {
    title: 'Boldad y perchas',
    description: 'Bolsas biodegradables y perchas antideslizantes',
    category_id: Category.find_by(name: 'Hogar').id,
    user_id: User.find_by(email: 'javiera@papinotas.com').id,
    stock: 200,
    expiration_date: Date.parse("2019-12-10")
  }
]
Product.create(products)
