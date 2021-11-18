require "test_helper"

class Temp3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp3 = temp3s(:one)
  end

  test "should get index" do
    get temp3s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp3_url
    assert_response :success
  end

  test "should create temp3" do
    assert_difference('Temp3.count') do
      post temp3s_url, params: { temp3: { adq_id: @temp3.adq_id, almacen_id: @temp3.almacen_id, clues_id: @temp3.clues_id, condiciones_id: @temp3.condiciones_id, contrato: @temp3.contrato, cp_id: @temp3.cp_id, da_id: @temp3.da_id, dg_id: @temp3.dg_id, entrega: @temp3.entrega, estado_id: @temp3.estado_id, facfianza: @temp3.facfianza, fecha: @temp3.fecha, fianza_id: @temp3.fianza_id, fuente_id: @temp3.fuente_id, id: @temp3.id, iva: @temp3.iva, jda_id: @temp3.jda_id, montoreq: @temp3.montoreq, montoreq2: @temp3.montoreq2, montoreq3: @temp3.montoreq3, montoreq4: @temp3.montoreq4, observaciones: @temp3.observaciones, partida_id: @temp3.partida_id, pena: @temp3.pena, proceso_id: @temp3.proceso_id, programa_id: @temp3.programa_id, proveedor_id: @temp3.proveedor_id, renglon_id: @temp3.renglon_id, reqexterna: @temp3.reqexterna, requi2_id: @temp3.requi2_id, requi3_id: @temp3.requi3_id, requi4_id: @temp3.requi4_id, requisicion_id: @temp3.requisicion_id, so_id: @temp3.so_id, subtotal: @temp3.subtotal, tipo_id: @temp3.tipo_id, total: @temp3.total, user_id: @temp3.user_id } }
    end

    assert_redirected_to temp3_url(Temp3.last)
  end

  test "should show temp3" do
    get temp3_url(@temp3)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp3_url(@temp3)
    assert_response :success
  end

  test "should update temp3" do
    patch temp3_url(@temp3), params: { temp3: { adq_id: @temp3.adq_id, almacen_id: @temp3.almacen_id, clues_id: @temp3.clues_id, condiciones_id: @temp3.condiciones_id, contrato: @temp3.contrato, cp_id: @temp3.cp_id, da_id: @temp3.da_id, dg_id: @temp3.dg_id, entrega: @temp3.entrega, estado_id: @temp3.estado_id, facfianza: @temp3.facfianza, fecha: @temp3.fecha, fianza_id: @temp3.fianza_id, fuente_id: @temp3.fuente_id, id: @temp3.id, iva: @temp3.iva, jda_id: @temp3.jda_id, montoreq: @temp3.montoreq, montoreq2: @temp3.montoreq2, montoreq3: @temp3.montoreq3, montoreq4: @temp3.montoreq4, observaciones: @temp3.observaciones, partida_id: @temp3.partida_id, pena: @temp3.pena, proceso_id: @temp3.proceso_id, programa_id: @temp3.programa_id, proveedor_id: @temp3.proveedor_id, renglon_id: @temp3.renglon_id, reqexterna: @temp3.reqexterna, requi2_id: @temp3.requi2_id, requi3_id: @temp3.requi3_id, requi4_id: @temp3.requi4_id, requisicion_id: @temp3.requisicion_id, so_id: @temp3.so_id, subtotal: @temp3.subtotal, tipo_id: @temp3.tipo_id, total: @temp3.total, user_id: @temp3.user_id } }
    assert_redirected_to temp3_url(@temp3)
  end

  test "should destroy temp3" do
    assert_difference('Temp3.count', -1) do
      delete temp3_url(@temp3)
    end

    assert_redirected_to temp3s_url
  end
end
