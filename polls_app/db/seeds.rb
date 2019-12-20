# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#order of delete.all
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user1 = User.create(username: 'Raz')
user2 = User.create(username: 'Jason')

# poll1 = Poll.create(title: 'test_poll', author_id: 2)
poll1 = Poll.create(title: 'test_poll', author: user2)

question1 = Question.create( body: 'is it working?', poll: poll1 )
question2 = Question.create( body: 'can you please work?', poll: poll1 )

answers = AnswerChoice.create([ { answer: 'yes', question: question1 }, { answer: 'no!', question: question2 } ])

response = Response.create(respondent: user1, answer_choice: answers.first)
