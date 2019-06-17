class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :subject
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
