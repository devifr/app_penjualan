class CreatePenjualans < ActiveRecord::Migration
  def change
    create_table :penjualans do |t|
      t.date :tanggal
      t.integer :location_id
      t.integer :jumlah_penjualan

      t.timestamps
    end
  end
end
