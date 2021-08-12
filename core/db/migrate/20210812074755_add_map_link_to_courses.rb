class AddMapLinkToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :map_link, :text
  end
end
