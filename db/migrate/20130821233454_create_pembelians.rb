class CreatePembelians < ActiveRecord::Migration
  def change
    create_table :pembelians do |t|
      t.integer :bahan_id
      t.integer :harga_beli
      t.integer :location_id
      t.date :tanggal

      t.timestamps
    end
  end
end
