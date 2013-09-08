class DeleteStockFromBahans < ActiveRecord::Migration
  def up
    remove_column :bahans, :stock
  end

  def down
    add_column :bahans, :stock, :integer, default: 0
  end
end
