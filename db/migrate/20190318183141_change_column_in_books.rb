class ChangeColumnInBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :genre_id, :string
    add_column :books, :genre_id, :integer
  end
end
