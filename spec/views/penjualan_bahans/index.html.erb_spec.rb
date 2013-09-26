require 'spec_helper'

describe "penjualan_bahans/index" do
  before(:each) do
    assign(:penjualan_bahans, [
      stub_model(PenjualanBahan,
        :penjualan_id => 1,
        :bahan_id => 2,
        :jumlah_bahan => 3
      ),
      stub_model(PenjualanBahan,
        :penjualan_id => 1,
        :bahan_id => 2,
        :jumlah_bahan => 3
      )
    ])
  end

  it "renders a list of penjualan_bahans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
