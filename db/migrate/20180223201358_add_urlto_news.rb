class AddUrltoNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :url, :string
  end
end
