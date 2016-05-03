require 'test_helper'

class CigarsControllerTest < ActionController::TestCase
  setup do
    @cigar = cigars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cigars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cigar" do
    assert_difference('Cigar.count') do
      post :create, cigar: { description: @cigar.description, manufacturer: @cigar.manufacturer, name: @cigar.name, price: @cigar.price }
    end

    assert_redirected_to cigar_path(assigns(:cigar))
  end

  test "should show cigar" do
    get :show, id: @cigar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cigar
    assert_response :success
  end

  test "should update cigar" do
    patch :update, id: @cigar, cigar: { description: @cigar.description, manufacturer: @cigar.manufacturer, name: @cigar.name, price: @cigar.price }
    assert_redirected_to cigar_path(assigns(:cigar))
  end

  test "should destroy cigar" do
    assert_difference('Cigar.count', -1) do
      delete :destroy, id: @cigar
    end

    assert_redirected_to cigars_path
  end
end
