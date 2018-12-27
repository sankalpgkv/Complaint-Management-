require 'test_helper'

class ComplaintListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint_list = complaint_lists(:one)
  end

  test "should get index" do
    get complaint_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_list_url
    assert_response :success
  end

  test "should create complaint_list" do
    assert_difference('ComplaintList.count') do
      post complaint_lists_url, params: { complaint_list: { description: @complaint_list.description, status: @complaint_list.status, title: @complaint_list.title } }
    end

    assert_redirected_to complaint_list_url(ComplaintList.last)
  end

  test "should show complaint_list" do
    get complaint_list_url(@complaint_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_list_url(@complaint_list)
    assert_response :success
  end

  test "should update complaint_list" do
    patch complaint_list_url(@complaint_list), params: { complaint_list: { description: @complaint_list.description, status: @complaint_list.status, title: @complaint_list.title } }
    assert_redirected_to complaint_list_url(@complaint_list)
  end

  test "should destroy complaint_list" do
    assert_difference('ComplaintList.count', -1) do
      delete complaint_list_url(@complaint_list)
    end

    assert_redirected_to complaint_lists_url
  end
end
