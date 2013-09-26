require 'spec_helper'

describe "penjualan_bahans/edit" do
  before(:each) do
    @penjualan_bahan = assign(:penjualan_bahan, stub_model(PenjualanBahan,
      :penjualan_id => 1,
      :bahan_id => 1,
      :jumlah_bahan => 1
    ))
  end

  it "renders the edit penjualan_bahan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", penjualan_bahan_path(@penjualan_bahan), "post" do
      assert_select "input#penjualan_bahan_penjualan_id[name=?]", "penjualan_bahan[penjualan_id]"
      assert_select "input#penjualan_bahan_bahan_id[name=?]", "penjualan_bahan[bahan_id]"
      assert_select "input#penjualan_bahan_jumlah_bahan[name=?]", "penjualan_bahan[jumlah_bahan]"
    end
  end
end
