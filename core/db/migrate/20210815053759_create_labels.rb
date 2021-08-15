class CreateLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :labels do |t|
      t.string :title, null: false
      t.text :description

      t.timestamps

      t.index :title, unique: true
    end
  end
end
