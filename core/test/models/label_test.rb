# == Schema Information
#
# Table name: labels
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_labels_on_title  (title) UNIQUE
#
require "test_helper"

class LabelTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
end
