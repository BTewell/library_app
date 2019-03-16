class AddColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :genre_id, :string
  end
end
