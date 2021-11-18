require "test_helper"

class Temp5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp5 = temp5s(:one)
  end

  test "should get index" do
    get temp5s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp5_url
    assert_response :success
  end

  test "should create temp5" do
    assert_difference('Temp5.count') do
      post temp5s_url, params: { temp5: { anexos: @temp5.anexos, autoriza_id: @temp5.autoriza_id, clues_id: @temp5.clues_id, estado_id: @temp5.estado_id, etiqueta: @temp5.etiqueta, fecha: @temp5.fecha, fuente_id: @temp5.fuente_id, id: @temp5.id, importe: @temp5.importe, user_id: @temp5.user_id, vobo_id: @temp5.vobo_id } }
    end

    assert_redirected_to temp5_url(Temp5.last)
  end

  test "should show temp5" do
    get temp5_url(@temp5)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp5_url(@temp5)
    assert_response :success
  end

  test "should update temp5" do
    patch temp5_url(@temp5), params: { temp5: { anexos: @temp5.anexos, autoriza_id: @temp5.autoriza_id, clues_id: @temp5.clues_id, estado_id: @temp5.estado_id, etiqueta: @temp5.etiqueta, fecha: @temp5.fecha, fuente_id: @temp5.fuente_id, id: @temp5.id, importe: @temp5.importe, user_id: @temp5.user_id, vobo_id: @temp5.vobo_id } }
    assert_redirected_to temp5_url(@temp5)
  end

  test "should destroy temp5" do
    assert_difference('Temp5.count', -1) do
      delete temp5_url(@temp5)
    end

    assert_redirected_to temp5s_url
  end
end
