class AddJumlahFromPembelians < ActiveRecord::Migration
  def up
    add_column :pembelians, :jumlah, :integer, default: 1
  end

  def down
    remove_column :pembelians, :jumlah
  end
end
