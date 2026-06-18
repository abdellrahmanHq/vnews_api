class AddCategoryAndReadingTimeToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :category, :string
    add_column :articles, :reading_time, :string
  end
end
