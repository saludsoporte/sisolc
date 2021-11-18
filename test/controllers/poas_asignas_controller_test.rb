require "test_helper"

class PoasAsignasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poas_asigna = poas_asignas(:one)
  end

  test "should get index" do
    get poas_asignas_url
    assert_response :success
  end

  test "should get new" do
    get new_poas_asigna_url
    assert_response :success
  end

  test "should create poas_asigna" do
    assert_difference('PoasAsigna.count') do
      post poas_asignas_url, params: { poas_asigna: { almacen_id: @poas_asigna.almacen_id, articulo: @poas_asigna.articulo, cantidad: @poas_asigna.cantidad, clave_id: @poas_asigna.clave_id, clues_id: @poas_asigna.clues_id, cve_centro_resp: @poas_asigna.cve_centro_resp, cve_presup: @poas_asigna.cve_presup, descripcion: @poas_asigna.descripcion, detpeds_id_1: @poas_asigna.detpeds_id_1, detpeds_id_2: @poas_asigna.detpeds_id_2, detpeds_id_3: @poas_asigna.detpeds_id_3, detpeds_id_4: @poas_asigna.detpeds_id_4, detpeds_id_5: @poas_asigna.detpeds_id_5, empate: @poas_asigna.empate, entrega_1: @poas_asigna.entrega_1, entrega_2: @poas_asigna.entrega_2, entrega_3: @poas_asigna.entrega_3, entrega_4: @poas_asigna.entrega_4, entrega_5: @poas_asigna.entrega_5, entrega_fecha_1: @poas_asigna.entrega_fecha_1, entrega_fecha_2: @poas_asigna.entrega_fecha_2, entrega_fecha_3: @poas_asigna.entrega_fecha_3, entrega_fecha_4: @poas_asigna.entrega_fecha_4, entrega_fecha_5: @poas_asigna.entrega_fecha_5, fuente_id: @poas_asigna.fuente_id, iva: @poas_asigna.iva, marca: @poas_asigna.marca, poas_id: @poas_asigna.poas_id, precio: @poas_asigna.precio, presentacion: @poas_asigna.presentacion, proceso_id: @poas_asigna.proceso_id, proveedor: @poas_asigna.proveedor, proveedor_id: @poas_asigna.proveedor_id, sacp_anio: @poas_asigna.sacp_anio, sacp_anio_pago: @poas_asigna.sacp_anio_pago, sacp_esq: @poas_asigna.sacp_esq, sacp_interno: @poas_asigna.sacp_interno, sacp_interno_pago: @poas_asigna.sacp_interno_pago, sacp_requisi: @poas_asigna.sacp_requisi, sacp_requisi_pago: @poas_asigna.sacp_requisi_pago, sino: @poas_asigna.sino } }
    end

    assert_redirected_to poas_asigna_url(PoasAsigna.last)
  end

  test "should show poas_asigna" do
    get poas_asigna_url(@poas_asigna)
    assert_response :success
  end

  test "should get edit" do
    get edit_poas_asigna_url(@poas_asigna)
    assert_response :success
  end

  test "should update poas_asigna" do
    patch poas_asigna_url(@poas_asigna), params: { poas_asigna: { almacen_id: @poas_asigna.almacen_id, articulo: @poas_asigna.articulo, cantidad: @poas_asigna.cantidad, clave_id: @poas_asigna.clave_id, clues_id: @poas_asigna.clues_id, cve_centro_resp: @poas_asigna.cve_centro_resp, cve_presup: @poas_asigna.cve_presup, descripcion: @poas_asigna.descripcion, detpeds_id_1: @poas_asigna.detpeds_id_1, detpeds_id_2: @poas_asigna.detpeds_id_2, detpeds_id_3: @poas_asigna.detpeds_id_3, detpeds_id_4: @poas_asigna.detpeds_id_4, detpeds_id_5: @poas_asigna.detpeds_id_5, empate: @poas_asigna.empate, entrega_1: @poas_asigna.entrega_1, entrega_2: @poas_asigna.entrega_2, entrega_3: @poas_asigna.entrega_3, entrega_4: @poas_asigna.entrega_4, entrega_5: @poas_asigna.entrega_5, entrega_fecha_1: @poas_asigna.entrega_fecha_1, entrega_fecha_2: @poas_asigna.entrega_fecha_2, entrega_fecha_3: @poas_asigna.entrega_fecha_3, entrega_fecha_4: @poas_asigna.entrega_fecha_4, entrega_fecha_5: @poas_asigna.entrega_fecha_5, fuente_id: @poas_asigna.fuente_id, iva: @poas_asigna.iva, marca: @poas_asigna.marca, poas_id: @poas_asigna.poas_id, precio: @poas_asigna.precio, presentacion: @poas_asigna.presentacion, proceso_id: @poas_asigna.proceso_id, proveedor: @poas_asigna.proveedor, proveedor_id: @poas_asigna.proveedor_id, sacp_anio: @poas_asigna.sacp_anio, sacp_anio_pago: @poas_asigna.sacp_anio_pago, sacp_esq: @poas_asigna.sacp_esq, sacp_interno: @poas_asigna.sacp_interno, sacp_interno_pago: @poas_asigna.sacp_interno_pago, sacp_requisi: @poas_asigna.sacp_requisi, sacp_requisi_pago: @poas_asigna.sacp_requisi_pago, sino: @poas_asigna.sino } }
    assert_redirected_to poas_asigna_url(@poas_asigna)
  end

  test "should destroy poas_asigna" do
    assert_difference('PoasAsigna.count', -1) do
      delete poas_asigna_url(@poas_asigna)
    end

    assert_redirected_to poas_asignas_url
  end
end
