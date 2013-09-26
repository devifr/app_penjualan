require 'spec_helper'

describe "penjualan_bahans/show" do
  before(:each) do
    @penjualan_bahan = assign(:penjualan_bahan, stub_model(PenjualanBahan,
      :penjualan_id => 1,
      :bahan_id => 2,
      :jumlah_bahan => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
