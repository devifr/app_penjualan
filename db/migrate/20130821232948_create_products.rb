class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nama_product
      t.float :harga

      t.timestamps
    end
  end
end
