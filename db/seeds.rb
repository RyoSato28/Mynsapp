User.create!(name:  "Nagi",
  email: "Nagischool@gmail.com",
  password:              "kamiumi",
  password_confirmation: "kamiumi",
  admin: true,
  activated: true,
  activated_at: Time.zone.now)

User.create!(name:  "Miki",
  email: "Mikinursery@gmail.com",
  password:              "hoiku0708",
  password_confirmation: "hoiku0708",
  activated: true,
  activated_at: Time.zone.now)

# User.create!(name:  "Example User",
#   email: "example@railstutorial.org",
#   password:              "foobar",
#   password_confirmation: "foobar",
#   admin: true,
#   activated: true,
#   activated_at: Time.zone.now)

# 99.times do |n|
# name  = Faker::Name.name
# email = "example-#{n+1}@railstutorial.org"
# password = "password"
# User.create!(name:  name,
#     email: email,
#     password:              password,
#     password_confirmation: password,
#     activated: true,
#     activated_at: Time.zone.now)
# end