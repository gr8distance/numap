# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course = Course.create!(title: '大瀬往復', description: '富士山を見ることができる絶景スポット')
label = Label.create!(title: '春', description: '3月~5月におすすめのライド')
CourseLabel.create!(course: course, label: label)
