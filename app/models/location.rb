class Location < ActiveRecord::Base
  attr_accessible :name_location

  has_many :pembelians
  has_many :penjualan
end
