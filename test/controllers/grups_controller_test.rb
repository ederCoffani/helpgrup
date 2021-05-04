require "test_helper"

class GrupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grup = grups(:one)
  end

  test "should get index" do
    get grups_url
    assert_response :success
  end

  test "should get new" do
    get new_grup_url
    assert_response :success
  end

  test "should create grup" do
    assert_difference('Grup.count') do
      post grups_url, params: { grup: { description: @grup.description, links: @grup.links, title: @grup.title } }
    end

    assert_redirected_to grup_url(Grup.last)
  end

  test "should show grup" do
    get grup_url(@grup)
    assert_response :success
  end

  test "should get edit" do
    get edit_grup_url(@grup)
    assert_response :success
  end

  test "should update grup" do
    patch grup_url(@grup), params: { grup: { description: @grup.description, links: @grup.links, title: @grup.title } }
    assert_redirected_to grup_url(@grup)
  end

  test "should destroy grup" do
    assert_difference('Grup.count', -1) do
      delete grup_url(@grup)
    end

    assert_redirected_to grups_url
  end
end
