class AddBreedToHums < ActiveRecord::Migration[5.2]
  def change
    add_column :hums, :breed, :string
  end
end
