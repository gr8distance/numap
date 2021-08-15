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
class Label < ApplicationRecord
  validates_presence_of :title
  validates_uniqueness_of :title
end
