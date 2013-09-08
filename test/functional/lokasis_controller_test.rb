require 'test_helper'

class LokasisControllerTest < ActionController::TestCase
  setup do
    @lokasi = lokasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lokasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lokasi" do
    assert_difference('Lokasi.count') do
      post :create, lokasi: { nama_lokasi: @lokasi.nama_lokasi }
    end

    assert_redirected_to lokasi_path(assigns(:lokasi))
  end

  test "should show lokasi" do
    get :show, id: @lokasi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lokasi
    assert_response :success
  end

  test "should update lokasi" do
    put :update, id: @lokasi, lokasi: { nama_lokasi: @lokasi.nama_lokasi }
    assert_redirected_to lokasi_path(assigns(:lokasi))
  end

  test "should destroy lokasi" do
    assert_difference('Lokasi.count', -1) do
      delete :destroy, id: @lokasi
    end

    assert_redirected_to lokasis_path
  end
end
