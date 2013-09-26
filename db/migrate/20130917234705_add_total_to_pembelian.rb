class AddTotalToPembelian < ActiveRecord::Migration
  def up
    add_column :pembelians, :total, :decimal
  end

  def down
    remove_column :pembelians, :total
  end
end
