class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps

      t.index :title
    end
  end
end
