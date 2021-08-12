# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_courses_on_title  (title)
#
require "test_helper"

class CourseTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
end
