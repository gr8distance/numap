class CreateCourseLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :course_labels do |t|
      t.references :course, null: false, foreign_key: true
      t.references :label, null: false, foreign_key: true

      t.timestamps

      t.index [:course_id, :label_id], unique: true
    end
  end
end
