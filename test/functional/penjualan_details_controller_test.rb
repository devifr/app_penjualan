require 'test_helper'

class PenjualanDetailsControllerTest < ActionController::TestCase
  setup do
    @penjualan_detail = penjualan_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penjualan_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penjualan_detail" do
    assert_difference('PenjualanDetail.count') do
      post :create, penjualan_detail: { jumlah_barang: @penjualan_detail.jumlah_barang, jumlah_penjualan: @penjualan_detail.jumlah_penjualan, penjualan_id: @penjualan_detail.penjualan_id, product_id: @penjualan_detail.product_id, tanggal: @penjualan_detail.tanggal }
    end

    assert_redirected_to penjualan_detail_path(assigns(:penjualan_detail))
  end

  test "should show penjualan_detail" do
    get :show, id: @penjualan_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penjualan_detail
    assert_response :success
  end

  test "should update penjualan_detail" do
    put :update, id: @penjualan_detail, penjualan_detail: { jumlah_barang: @penjualan_detail.jumlah_barang, jumlah_penjualan: @penjualan_detail.jumlah_penjualan, penjualan_id: @penjualan_detail.penjualan_id, product_id: @penjualan_detail.product_id, tanggal: @penjualan_detail.tanggal }
    assert_redirected_to penjualan_detail_path(assigns(:penjualan_detail))
  end

  test "should destroy penjualan_detail" do
    assert_difference('PenjualanDetail.count', -1) do
      delete :destroy, id: @penjualan_detail
    end

    assert_redirected_to penjualan_details_path
  end
end
