class CreateSectionsTeachers < ActiveRecord::Migration[5.1]
  def self.up
    create_table :sections_teachers, id: false do |t|
      t.references :section, null: false
      t.references :teacher, null: false
    end

    # Add an unique index for better join speed!
    add_index(:sections_teachers, [:section_id, :teacher_id], :unique => true)
  end

  def self.down
    drop_table :sections_teachers
  end
end
