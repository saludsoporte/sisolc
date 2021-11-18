require "test_helper"

class Temp12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp12 = temp12s(:one)
  end

  test "should get index" do
    get temp12s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp12_url
    assert_response :success
  end

  test "should create temp12" do
    assert_difference('Temp12.count') do
      post temp12s_url, params: { temp12: { almacen_id: @temp12.almacen_id, catalogo_id: @temp12.catalogo_id, total: @temp12.total } }
    end

    assert_redirected_to temp12_url(Temp12.last)
  end

  test "should show temp12" do
    get temp12_url(@temp12)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp12_url(@temp12)
    assert_response :success
  end

  test "should update temp12" do
    patch temp12_url(@temp12), params: { temp12: { almacen_id: @temp12.almacen_id, catalogo_id: @temp12.catalogo_id, total: @temp12.total } }
    assert_redirected_to temp12_url(@temp12)
  end

  test "should destroy temp12" do
    assert_difference('Temp12.count', -1) do
      delete temp12_url(@temp12)
    end

    assert_redirected_to temp12s_url
  end
end
