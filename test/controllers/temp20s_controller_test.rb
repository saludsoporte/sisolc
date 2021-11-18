require "test_helper"

class Temp20sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp20 = temp20s(:one)
  end

  test "should get index" do
    get temp20s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp20_url
    assert_response :success
  end

  test "should create temp20" do
    assert_difference('Temp20.count') do
      post temp20s_url, params: { temp20: { anexos: @temp20.anexos, autoriza_id: @temp20.autoriza_id, clues_id: @temp20.clues_id, estado_id: @temp20.estado_id, etiqueta: @temp20.etiqueta, fecha: @temp20.fecha, fuente_id: @temp20.fuente_id, id: @temp20.id, importe: @temp20.importe, user_id: @temp20.user_id, vobo_id: @temp20.vobo_id } }
    end

    assert_redirected_to temp20_url(Temp20.last)
  end

  test "should show temp20" do
    get temp20_url(@temp20)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp20_url(@temp20)
    assert_response :success
  end

  test "should update temp20" do
    patch temp20_url(@temp20), params: { temp20: { anexos: @temp20.anexos, autoriza_id: @temp20.autoriza_id, clues_id: @temp20.clues_id, estado_id: @temp20.estado_id, etiqueta: @temp20.etiqueta, fecha: @temp20.fecha, fuente_id: @temp20.fuente_id, id: @temp20.id, importe: @temp20.importe, user_id: @temp20.user_id, vobo_id: @temp20.vobo_id } }
    assert_redirected_to temp20_url(@temp20)
  end

  test "should destroy temp20" do
    assert_difference('Temp20.count', -1) do
      delete temp20_url(@temp20)
    end

    assert_redirected_to temp20s_url
  end
end
