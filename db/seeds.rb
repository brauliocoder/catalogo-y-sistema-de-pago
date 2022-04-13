# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create(
  [
    { name: 'digital' },
    { name: 'fisico' }
  ]
)

payment_methods = PaymentMethod.create(
  [
    { name: 'stripe', code: 'STRIPE' },
    { name: 'paypal', code: 'PAYPAL'},
    { name: 'transbank credito', code: 'TB-CREDIT'},
    { name: 'transbank webpay', code: 'TB-WEBPAY'},
    { name: 'transbank oneclick', code: 'TB-ONECLICK'}
  ]
)