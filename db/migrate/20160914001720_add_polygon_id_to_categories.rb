class AddPolygonIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :polygon_id, :integer
  end
end
