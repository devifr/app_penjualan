class Product < ActiveRecord::Base
  attr_accessible :harga, :nama_product

  has_many :penjualan_details
end
