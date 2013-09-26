class AddLocationIdAndStockToBahans < ActiveRecord::Migration
  def up
    add_column :bahans, :location_id, :integer
    add_column :bahans, :stock, :integer
  end

  def down
    remove_column :bahans, :location_id
    remove_column :bahans, :stock
  end
end
