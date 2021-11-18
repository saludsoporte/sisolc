require "test_helper"

class ProcesosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proceso = procesos(:one)
  end

  test "should get index" do
    get procesos_url
    assert_response :success
  end

  test "should get new" do
    get new_proceso_url
    assert_response :success
  end

  test "should create proceso" do
    assert_difference('Proceso.count') do
      post procesos_url, params: { proceso: { estado_id: @proceso.estado_id, fecha: @proceso.fecha, observacion: @proceso.observacion, partida_id: @proceso.partida_id, pena: @proceso.pena, proceso: @proceso.proceso, sancionmax: @proceso.sancionmax, tipo_id: @proceso.tipo_id, tipopro_id: @proceso.tipopro_id } }
    end

    assert_redirected_to proceso_url(Proceso.last)
  end

  test "should show proceso" do
    get proceso_url(@proceso)
    assert_response :success
  end

  test "should get edit" do
    get edit_proceso_url(@proceso)
    assert_response :success
  end

  test "should update proceso" do
    patch proceso_url(@proceso), params: { proceso: { estado_id: @proceso.estado_id, fecha: @proceso.fecha, observacion: @proceso.observacion, partida_id: @proceso.partida_id, pena: @proceso.pena, proceso: @proceso.proceso, sancionmax: @proceso.sancionmax, tipo_id: @proceso.tipo_id, tipopro_id: @proceso.tipopro_id } }
    assert_redirected_to proceso_url(@proceso)
  end

  test "should destroy proceso" do
    assert_difference('Proceso.count', -1) do
      delete proceso_url(@proceso)
    end

    assert_redirected_to procesos_url
  end
end
