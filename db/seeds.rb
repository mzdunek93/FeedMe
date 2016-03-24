# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Restaurant.create!(
  name: "Tropico",
  description: "Witamy serdecznie na naszej stronie, na której możecie zamówić ulubione dania on-line jak i telefonicznie.

  Nasze menu składa się z najpopularniejszych potraw kuchni polskiej, włoskiej oraz tureckiej.
  Wszystkie nasz potrawy przygotowywane są z starannie dobranych składników tak, aby zachwycać świeżością i smakiem.",
  phone: "61 877 55 66",
  address: "PIZZA POZNAŃ RATAJE 
  ul.Kórnicka 24",
  remote_logo_url: "http://pizzatropico.eu/img/logo.png"
)

Restaurant.create!(
  name: "Weranda",
  description: "Restauracje Weranda to wyjątkowy koncept w gastronomii, świat wyszukanych smaków połączony z niesamowitymi wrażeniami estetycznymi. Już od 15 lat cenimy nie tylko doskonałą kuchnię, ale również przyjemną i przytulną atmosferę. Wszechobecna zieleń i dopracowane w najmniejszym szczególe dekoracje towarzyszą każdej naszej przestrzeni, umilając oczekiwanie na świeżo przyrządzane specjały.",
  phone: "61 853 25 87",
  address: "Świętosławska 10, 61-870 Poznań",
  remote_logo_url: "https://d6zktcp1soofu.cloudfront.net/weranda-caffe-8600/1.mWTPT_sld.jpg"
)