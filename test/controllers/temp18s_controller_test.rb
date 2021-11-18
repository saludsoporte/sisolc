require "test_helper"

class Temp18sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp18 = temp18s(:one)
  end

  test "should get index" do
    get temp18s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp18_url
    assert_response :success
  end

  test "should create temp18" do
    assert_difference('Temp18.count') do
      post temp18s_url, params: { temp18: { adq_id: @temp18.adq_id, almacen_id: @temp18.almacen_id, clues_id: @temp18.clues_id, condiciones_id: @temp18.condiciones_id, contrato: @temp18.contrato, cp_id: @temp18.cp_id, da_id: @temp18.da_id, dg_id: @temp18.dg_id, entrega: @temp18.entrega, estado_id: @temp18.estado_id, fecha: @temp18.fecha, fianza_id: @temp18.fianza_id, fuente_id: @temp18.fuente_id, id: @temp18.id, iva: @temp18.iva, jda_id: @temp18.jda_id, observaciones: @temp18.observaciones, partida_id: @temp18.partida_id, pena: @temp18.pena, proceso_id: @temp18.proceso_id, programa_id: @temp18.programa_id, proveedor_id: @temp18.proveedor_id, renglon_id: @temp18.renglon_id, requisicion_id: @temp18.requisicion_id, so_id: @temp18.so_id, subtotal: @temp18.subtotal, tipo_id: @temp18.tipo_id, total: @temp18.total, user_id: @temp18.user_id } }
    end

    assert_redirected_to temp18_url(Temp18.last)
  end

  test "should show temp18" do
    get temp18_url(@temp18)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp18_url(@temp18)
    assert_response :success
  end

  test "should update temp18" do
    patch temp18_url(@temp18), params: { temp18: { adq_id: @temp18.adq_id, almacen_id: @temp18.almacen_id, clues_id: @temp18.clues_id, condiciones_id: @temp18.condiciones_id, contrato: @temp18.contrato, cp_id: @temp18.cp_id, da_id: @temp18.da_id, dg_id: @temp18.dg_id, entrega: @temp18.entrega, estado_id: @temp18.estado_id, fecha: @temp18.fecha, fianza_id: @temp18.fianza_id, fuente_id: @temp18.fuente_id, id: @temp18.id, iva: @temp18.iva, jda_id: @temp18.jda_id, observaciones: @temp18.observaciones, partida_id: @temp18.partida_id, pena: @temp18.pena, proceso_id: @temp18.proceso_id, programa_id: @temp18.programa_id, proveedor_id: @temp18.proveedor_id, renglon_id: @temp18.renglon_id, requisicion_id: @temp18.requisicion_id, so_id: @temp18.so_id, subtotal: @temp18.subtotal, tipo_id: @temp18.tipo_id, total: @temp18.total, user_id: @temp18.user_id } }
    assert_redirected_to temp18_url(@temp18)
  end

  test "should destroy temp18" do
    assert_difference('Temp18.count', -1) do
      delete temp18_url(@temp18)
    end

    assert_redirected_to temp18s_url
  end
end
