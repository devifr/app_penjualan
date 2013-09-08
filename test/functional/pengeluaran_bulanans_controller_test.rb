require 'test_helper'

class PengeluaranBulanansControllerTest < ActionController::TestCase
  setup do
    @pengeluaran_bulanan = pengeluaran_bulanans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pengeluaran_bulanans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pengeluaran_bulanan" do
    assert_difference('PengeluaranBulanan.count') do
      post :create, pengeluaran_bulanan: { bulan: @pengeluaran_bulanan.bulan, jumlah: @pengeluaran_bulanan.jumlah }
    end

    assert_redirected_to pengeluaran_bulanan_path(assigns(:pengeluaran_bulanan))
  end

  test "should show pengeluaran_bulanan" do
    get :show, id: @pengeluaran_bulanan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pengeluaran_bulanan
    assert_response :success
  end

  test "should update pengeluaran_bulanan" do
    put :update, id: @pengeluaran_bulanan, pengeluaran_bulanan: { bulan: @pengeluaran_bulanan.bulan, jumlah: @pengeluaran_bulanan.jumlah }
    assert_redirected_to pengeluaran_bulanan_path(assigns(:pengeluaran_bulanan))
  end

  test "should destroy pengeluaran_bulanan" do
    assert_difference('PengeluaranBulanan.count', -1) do
      delete :destroy, id: @pengeluaran_bulanan
    end

    assert_redirected_to pengeluaran_bulanans_path
  end
end
