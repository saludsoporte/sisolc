require "test_helper"

class AjustesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ajuste = ajustes(:one)
  end

  test "should get index" do
    get ajustes_url
    assert_response :success
  end

  test "should get new" do
    get new_ajuste_url
    assert_response :success
  end

  test "should create ajuste" do
    assert_difference('Ajuste.count') do
      post ajustes_url, params: { ajuste: { ajuste: @ajuste.ajuste, almacen_id: @ajuste.almacen_id, caducidad: @ajuste.caducidad, catalogo_id: @ajuste.catalogo_id, descrip: @ajuste.descrip, estado_id: @ajuste.estado_id, existen: @ajuste.existen, fecharep: @ajuste.fecharep, fuente_id: @ajuste.fuente_id, lote: @ajuste.lote, lote_id: @ajuste.lote_id, partida_id: @ajuste.partida_id, precio: @ajuste.precio, tipo_id: @ajuste.tipo_id } }
    end

    assert_redirected_to ajuste_url(Ajuste.last)
  end

  test "should show ajuste" do
    get ajuste_url(@ajuste)
    assert_response :success
  end

  test "should get edit" do
    get edit_ajuste_url(@ajuste)
    assert_response :success
  end

  test "should update ajuste" do
    patch ajuste_url(@ajuste), params: { ajuste: { ajuste: @ajuste.ajuste, almacen_id: @ajuste.almacen_id, caducidad: @ajuste.caducidad, catalogo_id: @ajuste.catalogo_id, descrip: @ajuste.descrip, estado_id: @ajuste.estado_id, existen: @ajuste.existen, fecharep: @ajuste.fecharep, fuente_id: @ajuste.fuente_id, lote: @ajuste.lote, lote_id: @ajuste.lote_id, partida_id: @ajuste.partida_id, precio: @ajuste.precio, tipo_id: @ajuste.tipo_id } }
    assert_redirected_to ajuste_url(@ajuste)
  end

  test "should destroy ajuste" do
    assert_difference('Ajuste.count', -1) do
      delete ajuste_url(@ajuste)
    end

    assert_redirected_to ajustes_url
  end
end
