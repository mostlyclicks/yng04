class AddDropboxUrlFieldToProducts < ActiveRecord::Migration
  def change
    add_column :products, :dropbox_url, :string
  end
end
