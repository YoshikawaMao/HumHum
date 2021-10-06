class AddUserIdToHums < ActiveRecord::Migration[5.2]
  def change
    add_column :hums, :user_id, :integer
  end
end
