require "test_helper"

class Temp17sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp17 = temp17s(:one)
  end

  test "should get index" do
    get temp17s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp17_url
    assert_response :success
  end

  test "should create temp17" do
    assert_difference('Temp17.count') do
      post temp17s_url, params: { temp17: { catalogo_id: @temp17.catalogo_id, nuevoped: @temp17.nuevoped, ped_id: @temp17.ped_id } }
    end

    assert_redirected_to temp17_url(Temp17.last)
  end

  test "should show temp17" do
    get temp17_url(@temp17)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp17_url(@temp17)
    assert_response :success
  end

  test "should update temp17" do
    patch temp17_url(@temp17), params: { temp17: { catalogo_id: @temp17.catalogo_id, nuevoped: @temp17.nuevoped, ped_id: @temp17.ped_id } }
    assert_redirected_to temp17_url(@temp17)
  end

  test "should destroy temp17" do
    assert_difference('Temp17.count', -1) do
      delete temp17_url(@temp17)
    end

    assert_redirected_to temp17s_url
  end
end
