class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :description
      t.string :content
      t.string :video_url
      t.belongs_to :course, foreign_key:true

      t.timestamps
    end
  end
end
