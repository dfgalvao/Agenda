namespace :utils do
  desc "Popular tabela users"
  task setup_user: :environment do
    if Rails.env.production?
      10.times do |i|
        username = Faker::Name.name
        useremail = Faker::Internet.email
        userphone = Faker::PhoneNumber.phone_number
        Remember.create(name: username, email:useremail, phone:userphone)
      end
    else 
      puts "você nao está em modo de producao!"
    end
  end
end
