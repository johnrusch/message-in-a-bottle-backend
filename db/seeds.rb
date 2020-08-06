# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Message.destroy_all
Journal.destroy_all

# 50.times do 
#     User.create({
#         name: Faker::Name.first_name,
#         password: Faker::Name.last_name
#     })
# end


User.create({
    name: "john",
    password: "john"
})

User.create({
    name: "Andy",
    password: "andy"
})

User.create({
    name: "Klarissa",
    password: "klarissa"
})

10.times do
    Message.create({
        content: Faker::Hipster.paragraph,
        sender_user_id: User.all.sample.id, 
        receiver_user_id: User.all.sample.id
    })
end

10.times do
    Journal.create({
            title: Faker::Hipster.sentence,
            content: Faker::Hipster.paragraph,
            user_id: User.all.sample.id
        })
    end