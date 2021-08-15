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
require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  subject { build(:label) }

  should validate_presence_of(:title)
  should validate_uniqueness_of(:title)
end
