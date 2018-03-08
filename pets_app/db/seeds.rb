# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

owner1 = Owner.create(owner_name: 'John')
owner2 = Owner.create(owner_name: 'Jessica')

Pet.create([
  {pet_name: 'Goldie', pet_specie: 'Goldfish', pet_image: 'https://d2kwjcq8j5htsz.cloudfront.net/1970/01/24104230/goldfish2.jpg', owner: owner1},
  {pet_name: 'Hammy', pet_specie: 'Hamster', pet_image: 'https://d2kwjcq8j5htsz.cloudfront.net/2016/01/05103319/hamster-language.jpg', owner: owner1},
  {pet_name: 'Winnie', pet_specie: 'Bear', pet_image: 'https://i.pinimg.com/originals/b3/08/d9/b308d99fe122bece2ca2d1ae89ae3eb6.jpg', owner: owner2},
  {pet_name: 'Doge', pet_specie: 'Dog', pet_image: 'http://cdn.akc.org/akccontentimages/BreedOfficialPortraits/hero/Shiba-Inu.jpg', owner: owner2}
  ])