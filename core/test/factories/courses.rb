# frozen_string_literal: true

# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  description :text
#  map_link    :text
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_courses_on_title  (title)
#
FactoryBot.define do
  factory :course do
    title { 'MyString' }
    description { 'MyText' }
  end
end
