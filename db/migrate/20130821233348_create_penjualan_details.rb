class CreatePenjualanDetails < ActiveRecord::Migration
  def change
    create_table :penjualan_details do |t|
      t.date :tanggal
      t.integer :penjualan_id
      t.integer :product_id
      t.integer :jumlah_barang
      t.integer :jumlah_penjualan

      t.timestamps
    end
  end
end
