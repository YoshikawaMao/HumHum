class RemoveTypeFromHums < ActiveRecord::Migration[5.2]
  def change
    remove_column :hums, :type, :string
  end
end
