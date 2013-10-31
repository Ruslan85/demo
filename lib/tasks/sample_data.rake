namespace :db do
  desc "Fill database"
  task loshok: :environment do
    User.create!(name: "Ruslan",
                email: "Ret85@mail.ru")      
    9.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@mail.ru"
        user = User.create!(name: name, 
                            email: email)
        3.times do |i|
          content  = "micropost number #{i+1}"
          user.microposts.create!(content: content)
        end
    end
  end
end
