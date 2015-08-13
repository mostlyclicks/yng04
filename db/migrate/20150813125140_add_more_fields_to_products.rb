class AddMoreFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :retail_price, :string
    add_column :products, :map_price, :string
    add_column :products, :color_options, :text
    add_column :products, :size_options, :text
  end
end
