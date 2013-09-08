require 'test_helper'

class BahansControllerTest < ActionController::TestCase
  setup do
    @bahan = bahans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bahans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bahan" do
    assert_difference('Bahan.count') do
      post :create, bahan: { nama: @bahan.nama, stock: @bahan.stock }
    end

    assert_redirected_to bahan_path(assigns(:bahan))
  end

  test "should show bahan" do
    get :show, id: @bahan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bahan
    assert_response :success
  end

  test "should update bahan" do
    put :update, id: @bahan, bahan: { nama: @bahan.nama, stock: @bahan.stock }
    assert_redirected_to bahan_path(assigns(:bahan))
  end

  test "should destroy bahan" do
    assert_difference('Bahan.count', -1) do
      delete :destroy, id: @bahan
    end

    assert_redirected_to bahans_path
  end
end
