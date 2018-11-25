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

Article.create!(title: "Приглашаем на работу!", text: "Компания
ПакСтандарт приглашает к себе сотрудников! Требуются упаковщики, резчики картона, грузчики,
курьеры. Высокая зароботная плата и возможность карьерного роста! Присоединяйтесь
к нашему дружному коллективу! Приходите по адресу ул. Ульяновкая, 10Б, корпус 2, отдел кадров.", date: "2018-11-10")

Article.create!(title: "Акция! Скидки на гофрокартон!", text: "Для наших оптовых
покупателей проводится специальная акция! До 40% скидки на изделия из гофрокатона марки Т22!
А также до 30% скидки на изделия из гофрокартонамарки Т23! Спешите! Акция действует 4 дня!
Для уточнения подробностей обращайтесь по телефону +380665599007", date: "2018-11-10")

Article.create!(title: "Внимание! Мы переезжаем!", text: "В связи с некоторыми
обстоятельствами мы переехали. Тпереь ищуте нас по адресу ул. Ульяновкая, 10Б!
Ждем вас!", date: "2018-11-10")


Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
техназначения", gofrolist_price: "2.66", product_price: "3.08")
Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
марки Т-21", gofrolist_price: "3.18", product_price: "3.40")
Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
марки Т-22", gofrolist_price: "3.48", product_price: "3.70")
Price.create!(mark_of_cardboard: "3-х слойный гофрокартон
марки Т-23", gofrolist_price: "3.75", product_price: "3.95")