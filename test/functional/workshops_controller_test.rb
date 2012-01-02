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

  # test whether the drop-down list of the restaurant_id is created correctly or not
  test "should show restaurant_id drop-down for new" do
    get :new, :id => @workshop.to_param
    assert_select 'select#workshop_restaurant_id' do
      # number of option tags
      assert_select 'option', assigns(:restaurants).length

      # text on drop-down list
      assert_select 'option[value="1"]', '1st_restaurant_name', 'found the 1st option of restaurant_id drop-down list is wrong'
      assert_select 'option[value="2"]', '2nd_restaurant_name', 'found the 2nd option of restaurant_id drop-down list is wrong'
    end
  end

  # test whether the drop-down list of the venue_id is created correctly or not
  test "should show venue_id drop-down for new" do
    get :new, :id => @workshop.to_param
    assert_select 'select#workshop_venue_id' do
      # number of option tags
      assert_select 'option', assigns(:venues).length

      # text on drop-down list
      assert_select 'option[value="1"]', '1st_venue_name', 'found the 1st option of venue_id drop-down list is wrong'
      assert_select 'option[value="2"]', '2nd_venue_name', 'found the 2nd option of venue_id drop-down list is wrong'
    end
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

  # test whether the drop-down list of the restaurant_id is created correctly or not
  test "should show restaurant_id drop-down for edit" do
    get :edit, :id => @workshop.to_param
    assert_select 'select#workshop_restaurant_id' do
      # number of option tags
      assert_select 'option', assigns(:restaurants).length

      # text on drop-down list
      assert_select 'option[value="1"]', '1st_restaurant_name', 'found the 1st option of restaurant_id drop-down list is wrong'
      assert_select 'option[value="2"]', '2nd_restaurant_name', 'found the 2nd option of restaurant_id drop-down list is wrong'
    end
  end

  # test whether the drop-down list of the venue_id is created correctly or not
  test "should show venue_id drop-down for edit" do
    get :edit, :id => @workshop.to_param
    assert_select 'select#workshop_venue_id' do
      # number of option tags
      assert_select 'option', assigns(:venues).length
      # text on drop-down list
      assert_select 'option[value="1"]', '1st_venue_name', 'found the 1st option of venue_id drop-down list is wrong'
      assert_select 'option[value="2"]', '2nd_venue_name', 'found the 2nd option of venue_id drop-down list is wrong'
    end
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
