class CreatePostCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :post_categories do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
    end
  end
end
