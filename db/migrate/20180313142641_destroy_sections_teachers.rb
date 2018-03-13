class DestroySectionsTeachers < ActiveRecord::Migration[5.1]
  def change
    drop_table :sections_teachers
  end
end