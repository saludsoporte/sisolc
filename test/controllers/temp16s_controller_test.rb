require "test_helper"

class Temp16sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp16 = temp16s(:one)
  end

  test "should get index" do
    get temp16s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp16_url
    assert_response :success
  end

  test "should create temp16" do
    assert_difference('Temp16.count') do
      post temp16s_url, params: { temp16: { autoriza_id: @temp16.autoriza_id, clues_id: @temp16.clues_id, estado_id: @temp16.estado_id, fecha: @temp16.fecha, fuente_id: @temp16.fuente_id, user_id: @temp16.user_id, vobo_id: @temp16.vobo_id } }
    end

    assert_redirected_to temp16_url(Temp16.last)
  end

  test "should show temp16" do
    get temp16_url(@temp16)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp16_url(@temp16)
    assert_response :success
  end

  test "should update temp16" do
    patch temp16_url(@temp16), params: { temp16: { autoriza_id: @temp16.autoriza_id, clues_id: @temp16.clues_id, estado_id: @temp16.estado_id, fecha: @temp16.fecha, fuente_id: @temp16.fuente_id, user_id: @temp16.user_id, vobo_id: @temp16.vobo_id } }
    assert_redirected_to temp16_url(@temp16)
  end

  test "should destroy temp16" do
    assert_difference('Temp16.count', -1) do
      delete temp16_url(@temp16)
    end

    assert_redirected_to temp16s_url
  end
end
