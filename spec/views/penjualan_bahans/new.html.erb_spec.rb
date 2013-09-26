require 'spec_helper'

describe "penjualan_bahans/new" do
  before(:each) do
    assign(:penjualan_bahan, stub_model(PenjualanBahan,
      :penjualan_id => 1,
      :bahan_id => 1,
      :jumlah_bahan => 1
    ).as_new_record)
  end

  it "renders new penjualan_bahan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", penjualan_bahans_path, "post" do
      assert_select "input#penjualan_bahan_penjualan_id[name=?]", "penjualan_bahan[penjualan_id]"
      assert_select "input#penjualan_bahan_bahan_id[name=?]", "penjualan_bahan[bahan_id]"
      assert_select "input#penjualan_bahan_jumlah_bahan[name=?]", "penjualan_bahan[jumlah_bahan]"
    end
  end
end
