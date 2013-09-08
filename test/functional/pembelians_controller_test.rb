require 'test_helper'

class PembeliansControllerTest < ActionController::TestCase
  setup do
    @pembelian = pembelians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pembelians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pembelian" do
    assert_difference('Pembelian.count') do
      post :create, pembelian: { bahan_id: @pembelian.bahan_id, harga_beli: @pembelian.harga_beli, location_id: @pembelian.location_id, tanggal: @pembelian.tanggal }
    end

    assert_redirected_to pembelian_path(assigns(:pembelian))
  end

  test "should show pembelian" do
    get :show, id: @pembelian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pembelian
    assert_response :success
  end

  test "should update pembelian" do
    put :update, id: @pembelian, pembelian: { bahan_id: @pembelian.bahan_id, harga_beli: @pembelian.harga_beli, location_id: @pembelian.location_id, tanggal: @pembelian.tanggal }
    assert_redirected_to pembelian_path(assigns(:pembelian))
  end

  test "should destroy pembelian" do
    assert_difference('Pembelian.count', -1) do
      delete :destroy, id: @pembelian
    end

    assert_redirected_to pembelians_path
  end
end
