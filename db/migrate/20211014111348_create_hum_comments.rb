class CreateHumComments < ActiveRecord::Migration[5.2]
  def change
    create_table :hum_comments do |t|
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
