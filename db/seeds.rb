# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create!(email: "treseler@gmail.com", password: "password")
user.templates.create!(name: "invoice", url: "https://docs.google.com/document/d/1xil2lc4CHNlfwt0eWcYqWfVZEm4IAgS0DxjeTHQ7S_0/edit?embedded=true")
user.templates.create!(name: "account agreement")
user.templates.create!(name: "indemnification agreement")
user.templates.create!(name: "confidentiality agreement")
user.templates.create!(name: "monthly sendout")
user.templates.create!(name: "christmas campaign")