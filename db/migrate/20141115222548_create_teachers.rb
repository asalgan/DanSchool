class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :short_description
      t.text :description

      t.timestamps
    end
  end
end
