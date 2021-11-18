require "test_helper"

class Temp19sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp19 = temp19s(:one)
  end

  test "should get index" do
    get temp19s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp19_url
    assert_response :success
  end

  test "should create temp19" do
    assert_difference('Temp19.count') do
      post temp19s_url, params: { temp19: { clue_id: @temp19.clue_id, ejercicio: @temp19.ejercicio, fuente_id: @temp19.fuente_id, importe: @temp19.importe, partida_id: @temp19.partida_id, programa_id: @temp19.programa_id, proyecto_id: @temp19.proyecto_id, requisicion_id: @temp19.requisicion_id } }
    end

    assert_redirected_to temp19_url(Temp19.last)
  end

  test "should show temp19" do
    get temp19_url(@temp19)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp19_url(@temp19)
    assert_response :success
  end

  test "should update temp19" do
    patch temp19_url(@temp19), params: { temp19: { clue_id: @temp19.clue_id, ejercicio: @temp19.ejercicio, fuente_id: @temp19.fuente_id, importe: @temp19.importe, partida_id: @temp19.partida_id, programa_id: @temp19.programa_id, proyecto_id: @temp19.proyecto_id, requisicion_id: @temp19.requisicion_id } }
    assert_redirected_to temp19_url(@temp19)
  end

  test "should destroy temp19" do
    assert_difference('Temp19.count', -1) do
      delete temp19_url(@temp19)
    end

    assert_redirected_to temp19s_url
  end
end
