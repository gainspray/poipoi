class CreateContributes < ActiveRecord::Migration[5.1]
  def change
    create_table :contributes do |t|
      t.string :videoname
      t.string :video
      t.string :image
      t.text :command
#      t.integer :user_id

      t.timestamps
    end
  end
end
