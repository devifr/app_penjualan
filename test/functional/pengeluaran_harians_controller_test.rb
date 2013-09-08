require 'test_helper'

class PengeluaranHariansControllerTest < ActionController::TestCase
  setup do
    @pengeluaran_harian = pengeluaran_harians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pengeluaran_harians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pengeluaran_harian" do
    assert_difference('PengeluaranHarian.count') do
      post :create, pengeluaran_harian: { jumlah: @pengeluaran_harian.jumlah, tanggal: @pengeluaran_harian.tanggal }
    end

    assert_redirected_to pengeluaran_harian_path(assigns(:pengeluaran_harian))
  end

  test "should show pengeluaran_harian" do
    get :show, id: @pengeluaran_harian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pengeluaran_harian
    assert_response :success
  end

  test "should update pengeluaran_harian" do
    put :update, id: @pengeluaran_harian, pengeluaran_harian: { jumlah: @pengeluaran_harian.jumlah, tanggal: @pengeluaran_harian.tanggal }
    assert_redirected_to pengeluaran_harian_path(assigns(:pengeluaran_harian))
  end

  test "should destroy pengeluaran_harian" do
    assert_difference('PengeluaranHarian.count', -1) do
      delete :destroy, id: @pengeluaran_harian
    end

    assert_redirected_to pengeluaran_harians_path
  end
end
