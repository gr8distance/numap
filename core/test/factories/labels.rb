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
FactoryBot.define do
  factory :label do
    title { "MyString" }
    description { "MyText" }
  end
end
