# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
puts "destroy db"
User.destroy_all
Worker.destroy_all
Admin.destroy_all

puts "Seeding in progress..."

users = User.create([{name: "Amen Atikpo", email:"amen.atikpo@student.moringaschool.com", password_digest: '123456', phone: '+233703000000', location: "Accra"},
                     {name: "Aisha Alausa", email:"aisha.alausa@student.moringaschool.com", password_digest: '123456', phone: '+234803000000', location: "Lagos"},
                     {name: "Benjamin Stephens", email:"benjamin.stephens@student.moringaschool.com", password_digest: '123456', phone: '+233703000001', location: "Kumasi"},
                     {name: "Keziah Okyere", email:"keziah.okyere@student.moringaschool.com", password_digest: '123456', phone: '+233703000002', location: "Upper Volta"}
                    ])

workers = Worker.create([{name: "Abduljabel Abdul", email:"abduljabel.abdul@student.moringaschool.com", password_digest: '123456', phone: '+233703000003', location: "Accra"},
                        {name: "Nosakhare Osagiede", email:"nosakhare.osagiede@student.moringaschool.com", password_digest: '123456', phone: '+234803000004', location: "Benin"},
                        {name: "Stephen Dogbey", email:"stephen.dogbey@student.moringaschool.com", password_digest: '123456', phone: '+233703000005', location: "Kumasi"},
                        {name: "Seth David", email:"seth.david@student.moringaschool.com", password_digest: '123456', phone: '+233703000006', location: "Upper Volta"}
                    ])

Admin.create(is_admin:"Admin", user_id: users.first, worker_id: workers.third)

puts "Seeding complete"
