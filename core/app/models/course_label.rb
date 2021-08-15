# == Schema Information
#
# Table name: course_labels
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer          not null
#  label_id   :integer          not null
#
# Indexes
#
#  index_course_labels_on_course_id               (course_id)
#  index_course_labels_on_course_id_and_label_id  (course_id,label_id) UNIQUE
#  index_course_labels_on_label_id                (label_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  label_id   (label_id => labels.id)
#
class CourseLabel < ApplicationRecord
  belongs_to :course
  belongs_to :label
end
