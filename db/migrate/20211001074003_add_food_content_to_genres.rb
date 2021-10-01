class AddFoodContentToGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :food_content, :text
    add_column :genres, :house_content, :text
    add_column :genres, :humtype_content, :text
    add_column :genres, :user_id, :integer
  end
end
