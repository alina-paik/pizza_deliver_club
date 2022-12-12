# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'base64'
# def convert_image(name)
#   Base64.encode64(File.open("#{Rails.root}/image/#{name}.webp").read)
# end
# Product

[
  { name: "Піца 4 м’яса", title_image: "https://drive.google.com/file/d/1tWhqRQ9WUQ_aV40tGPjB7mbWArLDHgyz/view?usp=share_link", price: 255,
    description: "Телятина су-від, салямі, мисливські ковбаски, куряче філе, сир дорблю, пармезан, моцарелла, твердий сир, орегано, томатний соус, 40 см – 760 г"},
  { name: "Піца Вегетаріанська", title_image: "https://drive.google.com/file/d/1UTnNwqxPh50lX0uoEC3Qb_7wx-sPTJcS/view?usp=share_link", price: 239,
    description: "Фета, моцарелла, броколі, маслини, оливки, болгарський перець, помідори, цибуля марс, орегано, томатний соус, 40 см – 800 г"},
  { name: "Піца 4 Сири", title_image: "https://drive.google.com/file/d/1aj1znBaiokB2JWxCLRwi9Mngf_gh5shz/view?usp=share_link", price: 255,
    description: "Моцарелла, сир дорблю, пармезан, твердий сир, соус бешамель, орегано, 40 см – 750 г"},
  { name: "Піца Тропікано", title_image: "https://drive.google.com/file/d/11KupYnbNvLZ8SwDkCGuA9rmVI8Pz712-/view?usp=share_link", price: 249,
    description: "Моцарелла, ананас, куряче філе, орегано, петрушка, томатний соус, 40 см – 900 г"},
  { name: "Піца Пепероні", title_image: "https://drive.google.com/file/d/19QL6_9sXIemaR7ypx_rmi9B-Y4lUhRsP/view?usp=share_link", price: 245,
    description: "Моцарелла, печериці, салямі, соус песто, томатний соус, орегано, 40 см – 800 г"},
  { name: "Піца Дари Моря", title_image: "https://drive.google.com/file/d/1AQIae7akudxHwBTAIGgy7rcCcipXprJN/view?usp=share_link", price: 305,
    description: "Моцарелла, лосось, мідії, кальмари, помідор, лимон, соус песто, орегано, томатний соус, 40 см – 900 г"},
  { name: "Піца Святий Діабло", title_image: "https://drive.google.com/file/d/1YDeWCINVLnlOtDX46MY2HgzxJ6seVH-V/view?usp=share_link", price: 255,
    description: "Пеппероні, мисливські ковбаски, фета, маслини, шрирача, моцарелла, орегано, томатний соус, 40 см – 870 г"},
  { name: "Піца З шинкою та грибами", title_image: "https://drive.google.com/file/d/1y8x-8lubdbCYxlGMJZ7fHN3tH__O2EZx/view?usp=share_link", price: 255,
    description: "Моцарелла, шинка, маслини, помідори, петрушка, печериці, орегано, томатний соус, 40 см – 900 г"},
  { name: "Піца Європейська", title_image: "https://drive.google.com/file/d/1oEKEw_jNvI97zRGV4vSvQ5jKmWcoi595/view?usp=share_link", price: 249,
    description: "Моцарелла, філе куряче, мисливські ковбаски, печериці, петрушка, шинка, томатний соус, орегано, 40 см – 900 г"},
  { name: "Піца М’ясний Бум", title_image: "https://drive.google.com/file/d/1Q6MFzm_XUekdhfTQxTfTBmn5lIp-93QT/view?usp=share_link", price: 255,
    description: "Моцарелла, мисливські ковбаски, бекон, буженина, цибуля марс, томатний соус, петрушка, орегано, 40 см – 850 г"}
  ].each do |attribute|
  Product.create(name: attribute[:name], title_image: attribute[:title_image], price: attribute[:price],
  description: attribute[:description]) if Product.find_by(name: attribute[:name], title_image: attribute[:title_image], price: attribute[:price],
  description: attribute[:description]).nil?
  puts "pizza with name #{attribute[:name]} was cteated"
end
