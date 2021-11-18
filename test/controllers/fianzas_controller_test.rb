require "test_helper"

class FianzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fianza = fianzas(:one)
  end

  test "should get index" do
    get fianzas_url
    assert_response :success
  end

  test "should get new" do
    get new_fianza_url
    assert_response :success
  end

  test "should create fianza" do
    assert_difference('Fianza.count') do
      post fianzas_url, params: { fianza: { clave: @fianza.clave, contrato_id: @fianza.contrato_id, contratos: @fianza.contratos, estado_id: @fianza.estado_id, fecha: @fianza.fecha, imp_peds: @fianza.imp_peds, monto: @fianza.monto, observa: @fianza.observa, proceso_id: @fianza.proceso_id, prov_id: @fianza.prov_id, situacion: @fianza.situacion, tipo_id: @fianza.tipo_id, user_id: @fianza.user_id, vence: @fianza.vence } }
    end

    assert_redirected_to fianza_url(Fianza.last)
  end

  test "should show fianza" do
    get fianza_url(@fianza)
    assert_response :success
  end

  test "should get edit" do
    get edit_fianza_url(@fianza)
    assert_response :success
  end

  test "should update fianza" do
    patch fianza_url(@fianza), params: { fianza: { clave: @fianza.clave, contrato_id: @fianza.contrato_id, contratos: @fianza.contratos, estado_id: @fianza.estado_id, fecha: @fianza.fecha, imp_peds: @fianza.imp_peds, monto: @fianza.monto, observa: @fianza.observa, proceso_id: @fianza.proceso_id, prov_id: @fianza.prov_id, situacion: @fianza.situacion, tipo_id: @fianza.tipo_id, user_id: @fianza.user_id, vence: @fianza.vence } }
    assert_redirected_to fianza_url(@fianza)
  end

  test "should destroy fianza" do
    assert_difference('Fianza.count', -1) do
      delete fianza_url(@fianza)
    end

    assert_redirected_to fianzas_url
  end
end
