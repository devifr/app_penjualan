require 'spec_helper'

describe "PenjualanBahans" do
  describe "GET /penjualan_bahans" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get penjualan_bahans_path
      response.status.should be(200)
    end
  end
end
