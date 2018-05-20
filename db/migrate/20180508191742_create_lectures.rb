class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.text :content
      t.string :attachement
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
