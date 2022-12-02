# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'base64'
def convert_image(name)
  Base64.encode64(File.open("#{Rails.root}/image/#{name}.webp").read)
end
# Product

[
  { name: "Піца 4 м’яса", title_image: convert_image("4-mjasa"), price: "255 грн",
    description: "Телятина су-від, салямі, мисливські ковбаски, куряче філе, сир дорблю, пармезан, моцарелла, твердий сир, орегано, томатний соус, 40 см – 760 г"},
  { name: "Піца Вегетаріанська", title_image: convert_image("vegetarianskaja"), price: "239 грн",
    description: "Фета, моцарелла, броколі, маслини, оливки, болгарський перець, помідори, цибуля марс, орегано, томатний соус, 40 см – 800 г"},
  { name: "Піца 4 Сири", title_image: convert_image("4-syra"), price: "255 грн",
    description: "Моцарелла, сир дорблю, пармезан, твердий сир, соус бешамель, орегано, 40 см – 750 г"},
  { name: "Піца Тропікано", title_image: convert_image("tropikano"), price: "249 грн",
    description: "Моцарелла, ананас, куряче філе, орегано, петрушка, томатний соус, 40 см – 900 г"},
  { name: "Піца Пепероні", title_image: convert_image("pepperoni"), price: "245 грн",
    description: "Моцарелла, печериці, салямі, соус песто, томатний соус, орегано, 40 см – 800 г"},
  { name: "Піца Дари Моря", title_image: convert_image("dary-morja"), price: "305 грн",
    description: "Моцарелла, лосось, мідії, кальмари, помідор, лимон, соус песто, орегано, томатний соус, 40 см – 900 г"},
  { name: "Піца Святий Діабло", title_image: convert_image("svjatoi-diablo"), price: "255 грн",
    description: "Пеппероні, мисливські ковбаски, фета, маслини, шрирача, моцарелла, орегано, томатний соус, 40 см – 870 г"},
  { name: "Піца З шинкою та грибами", title_image: convert_image("vechtchina-griby"), price: "255 грн",
    description: "Моцарелла, шинка, маслини, помідори, петрушка, печериці, орегано, томатний соус, 40 см – 900 г"},
  { name: "Піца Європейська", title_image: convert_image("evropejskaja"), price: "249 грн",
    description: "Моцарелла, філе куряче, мисливські ковбаски, печериці, петрушка, шинка, томатний соус, орегано, 40 см – 900 г"},
  { name: "Піца М’ясний Бум", title_image: convert_image("mjasnoj-bum"), price: "255 грн",
    description: "Моцарелла, мисливські ковбаски, бекон, буженина, цибуля марс, томатний соус, петрушка, орегано, 40 см – 850 г"}
  ].each do |attribute|
  Product.create(name: attribute[:name], title_image: attribute[:title_image], price: attribute[:price],
  description: attribute[:description]) if Product.find_by(name: attribute[:name], title_image: attribute[:title_image], price: attribute[:price],
  description: attribute[:description]).nil?
  puts "pizza with name #{attribute[:name]} was cteated"
end
