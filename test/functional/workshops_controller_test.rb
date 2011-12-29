require 'test_helper'

class WorkshopsControllerTest < ActionController::TestCase
  setup do
    @workshop = workshops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workshops)
  end

  test "should get new" do
    get :new
    # whether @restaurants has all records of the Restaurants table or not
    assert_equal Restaurant.all.length, assigns(:restaurants).length, 'the number of data is wrong which @restaurants has'

    # whether @venues has all records of the Venues table or not
    assert_equal Venue.all.length, assigns(:venues).length, 'the number of data is wrong which @venues has'
    assert_response :success
  end

  test "should create workshop" do
    assert_difference('Workshop.count') do
      post :create, :workshop => @workshop.attributes
    end

    assert_redirected_to workshop_path(assigns(:workshop))
  end

  test "should show workshop" do
    get :show, :id => @workshop.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @workshop.to_param
    # whether @restaurants has all records of the Restaurants table or not
    assert_equal Restaurant.all.length, assigns(:restaurants).length, 'found restaurants row number is wrong'

    # whether @venues has all records of the Venues table or not
    assert_equal Venue.all.length, assigns(:venues).length, 'found venues row number is wrong'
    assert_response :success
  end

  test "should update workshop" do
    put :update, :id => @workshop.to_param, :workshop => @workshop.attributes
    assert_redirected_to workshop_path(assigns(:workshop))
  end

  test "should destroy workshop" do
    assert_difference('Workshop.count', -1) do
      delete :destroy, :id => @workshop.to_param
    end

    assert_redirected_to workshops_path
  end
end
