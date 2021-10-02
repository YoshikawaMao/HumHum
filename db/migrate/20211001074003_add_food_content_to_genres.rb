class AddFoodContentToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :content, :text
    add_column :genres, :name, :string
    add_column :genres, :user_id, :integer
  end
end
