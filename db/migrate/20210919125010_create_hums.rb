class CreateHums < ActiveRecord::Migration[5.2]
  def change
    create_table :hums do |t|
      t.string :name
      t.string :gender
      t.string :type
      t.string :age
      t.text :character

      t.timestamps
    end
  end
end
