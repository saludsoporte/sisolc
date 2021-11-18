require "test_helper"

class PedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ped = peds(:one)
  end

  test "should get index" do
    get peds_url
    assert_response :success
  end

  test "should get new" do
    get new_ped_url
    assert_response :success
  end

  test "should create ped" do
    assert_difference('Ped.count') do
      post peds_url, params: { ped: { adq_id: @ped.adq_id, almacen_id: @ped.almacen_id, clues_id: @ped.clues_id, condiciones_id: @ped.condiciones_id, contrato: @ped.contrato, cp_id: @ped.cp_id, da_id: @ped.da_id, dg_id: @ped.dg_id, entrega: @ped.entrega, estado_id: @ped.estado_id, facfianza: @ped.facfianza, fecha: @ped.fecha, fianza_id: @ped.fianza_id, fuente_id: @ped.fuente_id, iva: @ped.iva, jda_id: @ped.jda_id, montoreq: @ped.montoreq, montoreq2: @ped.montoreq2, montoreq3: @ped.montoreq3, montoreq4: @ped.montoreq4, observaciones: @ped.observaciones, partida_id: @ped.partida_id, pena: @ped.pena, proceso_id: @ped.proceso_id, programa_id: @ped.programa_id, proveedor_id: @ped.proveedor_id, renglon_id: @ped.renglon_id, reqexterna: @ped.reqexterna, requi2_id: @ped.requi2_id, requi3_id: @ped.requi3_id, requi4_id: @ped.requi4_id, requi5_id: @ped.requi5_id, requisicion_id: @ped.requisicion_id, so_id: @ped.so_id, subtotal: @ped.subtotal, tipo_id: @ped.tipo_id, total: @ped.total, user_id: @ped.user_id } }
    end

    assert_redirected_to ped_url(Ped.last)
  end

  test "should show ped" do
    get ped_url(@ped)
    assert_response :success
  end

  test "should get edit" do
    get edit_ped_url(@ped)
    assert_response :success
  end

  test "should update ped" do
    patch ped_url(@ped), params: { ped: { adq_id: @ped.adq_id, almacen_id: @ped.almacen_id, clues_id: @ped.clues_id, condiciones_id: @ped.condiciones_id, contrato: @ped.contrato, cp_id: @ped.cp_id, da_id: @ped.da_id, dg_id: @ped.dg_id, entrega: @ped.entrega, estado_id: @ped.estado_id, facfianza: @ped.facfianza, fecha: @ped.fecha, fianza_id: @ped.fianza_id, fuente_id: @ped.fuente_id, iva: @ped.iva, jda_id: @ped.jda_id, montoreq: @ped.montoreq, montoreq2: @ped.montoreq2, montoreq3: @ped.montoreq3, montoreq4: @ped.montoreq4, observaciones: @ped.observaciones, partida_id: @ped.partida_id, pena: @ped.pena, proceso_id: @ped.proceso_id, programa_id: @ped.programa_id, proveedor_id: @ped.proveedor_id, renglon_id: @ped.renglon_id, reqexterna: @ped.reqexterna, requi2_id: @ped.requi2_id, requi3_id: @ped.requi3_id, requi4_id: @ped.requi4_id, requi5_id: @ped.requi5_id, requisicion_id: @ped.requisicion_id, so_id: @ped.so_id, subtotal: @ped.subtotal, tipo_id: @ped.tipo_id, total: @ped.total, user_id: @ped.user_id } }
    assert_redirected_to ped_url(@ped)
  end

  test "should destroy ped" do
    assert_difference('Ped.count', -1) do
      delete ped_url(@ped)
    end

    assert_redirected_to peds_url
  end
end
