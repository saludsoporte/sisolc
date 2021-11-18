require "test_helper"

class PoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poa = poas(:one)
  end

  test "should get index" do
    get poas_url
    assert_response :success
  end

  test "should get new" do
    get new_poa_url
    assert_response :success
  end

  test "should create poa" do
    assert_difference('Poa.count') do
      post poas_url, params: { poa: { accion: @poa.accion, accion_id: @poa.accion_id, afaspe: @poa.afaspe, articulo: @poa.articulo, cantidad: @poa.cantidad, clave_id: @poa.clave_id, clues_id: @poa.clues_id, descripcion: @poa.descripcion, fuente: @poa.fuente, fuente_id: @poa.fuente_id, intcauses: @poa.intcauses, marca: @poa.marca, nombreuni: @poa.nombreuni, observacion: @poa.observacion, partida: @poa.partida, precioiva: @poa.precioiva, preciolin: @poa.preciolin, presentacion: @poa.presentacion, presupuesto: @poa.presupuesto, programa: @poa.programa, sacp_anio: @poa.sacp_anio, sacp_esq: @poa.sacp_esq, sacp_interno: @poa.sacp_interno, sacp_requisi: @poa.sacp_requisi, sino: @poa.sino, subprograma: @poa.subprograma } }
    end

    assert_redirected_to poa_url(Poa.last)
  end

  test "should show poa" do
    get poa_url(@poa)
    assert_response :success
  end

  test "should get edit" do
    get edit_poa_url(@poa)
    assert_response :success
  end

  test "should update poa" do
    patch poa_url(@poa), params: { poa: { accion: @poa.accion, accion_id: @poa.accion_id, afaspe: @poa.afaspe, articulo: @poa.articulo, cantidad: @poa.cantidad, clave_id: @poa.clave_id, clues_id: @poa.clues_id, descripcion: @poa.descripcion, fuente: @poa.fuente, fuente_id: @poa.fuente_id, intcauses: @poa.intcauses, marca: @poa.marca, nombreuni: @poa.nombreuni, observacion: @poa.observacion, partida: @poa.partida, precioiva: @poa.precioiva, preciolin: @poa.preciolin, presentacion: @poa.presentacion, presupuesto: @poa.presupuesto, programa: @poa.programa, sacp_anio: @poa.sacp_anio, sacp_esq: @poa.sacp_esq, sacp_interno: @poa.sacp_interno, sacp_requisi: @poa.sacp_requisi, sino: @poa.sino, subprograma: @poa.subprograma } }
    assert_redirected_to poa_url(@poa)
  end

  test "should destroy poa" do
    assert_difference('Poa.count', -1) do
      delete poa_url(@poa)
    end

    assert_redirected_to poas_url
  end
end
