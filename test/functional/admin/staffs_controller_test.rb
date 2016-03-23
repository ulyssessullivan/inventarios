require 'test_helper'

class Admin::StaffsControllerTest < ActionController::TestCase
  setup do
    @admin_staff = admin_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_staff" do
    assert_difference('Admin::Staff.count') do
      post :create, admin_staff: { address: @admin_staff.address, name: @admin_staff.name, phone: @admin_staff.phone }
    end

    assert_redirected_to admin_staff_path(assigns(:admin_staff))
  end

  test "should show admin_staff" do
    get :show, id: @admin_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_staff
    assert_response :success
  end

  test "should update admin_staff" do
    put :update, id: @admin_staff, admin_staff: { address: @admin_staff.address, name: @admin_staff.name, phone: @admin_staff.phone }
    assert_redirected_to admin_staff_path(assigns(:admin_staff))
  end

  test "should destroy admin_staff" do
    assert_difference('Admin::Staff.count', -1) do
      delete :destroy, id: @admin_staff
    end

    assert_redirected_to admin_staffs_path
  end
end
