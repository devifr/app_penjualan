class CreateBahans < ActiveRecord::Migration
  def change
    create_table :bahans do |t|
      t.string :nama
      t.integer :stock

      t.timestamps
    end
  end
end
