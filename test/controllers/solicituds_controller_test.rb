require "test_helper"

class SolicitudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get solicituds_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_url
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post solicituds_url, params: { solicitud: { adqui_id: @solicitud.adqui_id, anexos: @solicitud.anexos, area_id: @solicitud.area_id, estado_id: @solicitud.estado_id, fuente_id: @solicitud.fuente_id, importe: @solicitud.importe, notas: @solicitud.notas, partida_id: @solicitud.partida_id, programa_id: @solicitud.programa_id, proyecto_id: @solicitud.proyecto_id, recepcion: @solicitud.recepcion, renglon_id: @solicitud.renglon_id, requisicion_id: @solicitud.requisicion_id, techo: @solicitud.techo, tipo_id: @solicitud.tipo_id, tipotecho: @solicitud.tipotecho, user_id: @solicitud.user_id, vobotecnico_id: @solicitud.vobotecnico_id } }
    end

    assert_redirected_to solicitud_url(Solicitud.last)
  end

  test "should show solicitud" do
    get solicitud_url(@solicitud)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_url(@solicitud)
    assert_response :success
  end

  test "should update solicitud" do
    patch solicitud_url(@solicitud), params: { solicitud: { adqui_id: @solicitud.adqui_id, anexos: @solicitud.anexos, area_id: @solicitud.area_id, estado_id: @solicitud.estado_id, fuente_id: @solicitud.fuente_id, importe: @solicitud.importe, notas: @solicitud.notas, partida_id: @solicitud.partida_id, programa_id: @solicitud.programa_id, proyecto_id: @solicitud.proyecto_id, recepcion: @solicitud.recepcion, renglon_id: @solicitud.renglon_id, requisicion_id: @solicitud.requisicion_id, techo: @solicitud.techo, tipo_id: @solicitud.tipo_id, tipotecho: @solicitud.tipotecho, user_id: @solicitud.user_id, vobotecnico_id: @solicitud.vobotecnico_id } }
    assert_redirected_to solicitud_url(@solicitud)
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete solicitud_url(@solicitud)
    end

    assert_redirected_to solicituds_url
  end
end
