class AddImageIdToHums < ActiveRecord::Migration[5.2]
  def change
    add_column :hums, :image_id, :string
  end
end
