# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create(name: "Emperor Goatimus", email: "eg@tiy.com", password: "goat")
question_types = ["Yes/No", "Choice", "Short Answer", "Long Answer"]

1000.times do
  Author.create(name: Faker::Name.name, email: Faker::Internet.email, password: "goat")
end

all_author = Author.all

1000.times do
  survey = Survey.create(title: Faker::Commerce.product_name, description: "N/A",
                  author: all_author.sample)
  30.times do |i|
    survey.questions << Question.create(order_number: i, question_type: question_types.sample,
                          question_text: Faker::Company.bs + "?",
                          description: "See Above",
                          survey: survey)
  end
end
