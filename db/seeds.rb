# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  assessment = Assessment.create!(title: 'Какое ты животное?')

  Question.create(assessment: assessment, text: 'Сколько тебе лет?').tap do |question|
    question.variants.create!(text:"Меньше 10 лет", value: 1)
    question.variants.create!(text:"10-20 лет", value:2)
    question.variants.create!(text:"20-30 лет", value:3)
    question.variants.create!(text:"30+", value:4)
  end
end