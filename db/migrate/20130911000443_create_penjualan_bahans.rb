class CreatePenjualanBahans < ActiveRecord::Migration
  def change
    create_table :penjualan_bahans do |t|
      t.integer :penjualan_id
      t.integer :bahan_id
      t.integer :jumlah_bahan

      t.timestamps
    end
  end
end
