require 'test_helper'

class ActionItemGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @action_item_group = action_item_groups(:one)
  end

  test "should get index" do
    get action_item_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_action_item_group_url
    assert_response :success
  end

  test "should create action_item_group" do
    assert_difference('ActionItemGroup.count') do
      post action_item_groups_url, params: { action_item_group: { name: @action_item_group.name, project_id: @action_item_group.project_id } }
    end

    assert_redirected_to action_item_group_url(ActionItemGroup.last)
  end

  test "should show action_item_group" do
    get action_item_group_url(@action_item_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_action_item_group_url(@action_item_group)
    assert_response :success
  end

  test "should update action_item_group" do
    patch action_item_group_url(@action_item_group), params: { action_item_group: { name: @action_item_group.name, project_id: @action_item_group.project_id } }
    assert_redirected_to action_item_group_url(@action_item_group)
  end

  test "should destroy action_item_group" do
    assert_difference('ActionItemGroup.count', -1) do
      delete action_item_group_url(@action_item_group)
    end

    assert_redirected_to action_item_groups_url
  end
end
