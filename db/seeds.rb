User.create!(name:  "Irina",
             email: "irina.che333@gmail.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  address = Faker::Address.street_address
  users.each { |user| user.orders.create!(address: address) }
end

Article.create!(title: "Ut enim ad minim veniam, quis nostrud", text: "Lorem ipsum dolor sit amet,
consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", date: "2018-11-10")

Article.create!(title: "Ut enim ad minim veniam, quis nostrud", text: "But I must explain to you how
all this mistaken idea of denouncing pleasure and praising pain was born and
I will give you a complete account of the system, and expound the actual
teachings of the great explorer of the truth, the master-builder of human
happiness. No one rejects, dislikes, or avoids pleasure itself,
because it is pleasure,", date: "2018-11-10")

Article.create!(title: "Ut enim ad minim veniam, quis nostrud", text: "Lorem ipsum dolor sit amet,
consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", date: "2018-11-10")


Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
техназначения", gofrolist_price: "2.66", product_price: "3.08")
Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
марки Т-21", gofrolist_price: "3.18", product_price: "3.40")
Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
марки Т-22", gofrolist_price: "3.48", product_price: "3.70")
Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
марки Т-23", gofrolist_price: "3.75", product_price: "3.95")