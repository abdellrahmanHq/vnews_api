class AddImagesToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :image_url, :string
    add_column :articles, :url, :string
  end
end
