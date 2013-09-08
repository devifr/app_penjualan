require 'test_helper'

class PenjualansControllerTest < ActionController::TestCase
  setup do
    @penjualan = penjualans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:penjualans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create penjualan" do
    assert_difference('Penjualan.count') do
      post :create, penjualan: { jumlah_penjualan: @penjualan.jumlah_penjualan, location_id: @penjualan.location_id, tanggal: @penjualan.tanggal }
    end

    assert_redirected_to penjualan_path(assigns(:penjualan))
  end

  test "should show penjualan" do
    get :show, id: @penjualan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @penjualan
    assert_response :success
  end

  test "should update penjualan" do
    put :update, id: @penjualan, penjualan: { jumlah_penjualan: @penjualan.jumlah_penjualan, location_id: @penjualan.location_id, tanggal: @penjualan.tanggal }
    assert_redirected_to penjualan_path(assigns(:penjualan))
  end

  test "should destroy penjualan" do
    assert_difference('Penjualan.count', -1) do
      delete :destroy, id: @penjualan
    end

    assert_redirected_to penjualans_path
  end
end
