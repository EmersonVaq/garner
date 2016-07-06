require 'test_helper'

class VentsControllerTest < ActionController::TestCase
  setup do
    @vent = vents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vent" do
    assert_difference('Vent.count') do
      post :create, vent: { title: @vent.title, user: @vent.user, vent_text: @vent.vent_text }
    end

    assert_redirected_to vent_path(assigns(:vent))
  end

  test "should show vent" do
    get :show, id: @vent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vent
    assert_response :success
  end

  test "should update vent" do
    patch :update, id: @vent, vent: { title: @vent.title, user: @vent.user, vent_text: @vent.vent_text }
    assert_redirected_to vent_path(assigns(:vent))
  end

  test "should destroy vent" do
    assert_difference('Vent.count', -1) do
      delete :destroy, id: @vent
    end

    assert_redirected_to vents_path
  end
end
