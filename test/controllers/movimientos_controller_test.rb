require "test_helper"

class MovimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimiento = movimientos(:one)
  end

  test "should get index" do
    get movimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_movimiento_url
    assert_response :success
  end

  test "should create movimiento" do
    assert_difference('Movimiento.count') do
      post movimientos_url, params: { movimiento: { almacen_id: @movimiento.almacen_id, consec: @movimiento.consec, cve_factura_sacp: @movimiento.cve_factura_sacp, descripcion: @movimiento.descripcion, estado_id: @movimiento.estado_id, facrep: @movimiento.facrep, facrepc: @movimiento.facrepc, factura: @movimiento.factura, fecha: @movimiento.fecha, fechafac: @movimiento.fechafac, impfac: @movimiento.impfac, importe: @movimiento.importe, montonota: @movimiento.montonota, movimiento_id: @movimiento.movimiento_id, nfacrep: @movimiento.nfacrep, notacre: @movimiento.notacre, oridest: @movimiento.oridest, partida_id: @movimiento.partida_id, ped_id: @movimiento.ped_id, pedido: @movimiento.pedido, sancion: @movimiento.sancion, tipo2: @movimiento.tipo2, tipo_id: @movimiento.tipo_id, user_id: @movimiento.user_id } }
    end

    assert_redirected_to movimiento_url(Movimiento.last)
  end

  test "should show movimiento" do
    get movimiento_url(@movimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimiento_url(@movimiento)
    assert_response :success
  end

  test "should update movimiento" do
    patch movimiento_url(@movimiento), params: { movimiento: { almacen_id: @movimiento.almacen_id, consec: @movimiento.consec, cve_factura_sacp: @movimiento.cve_factura_sacp, descripcion: @movimiento.descripcion, estado_id: @movimiento.estado_id, facrep: @movimiento.facrep, facrepc: @movimiento.facrepc, factura: @movimiento.factura, fecha: @movimiento.fecha, fechafac: @movimiento.fechafac, impfac: @movimiento.impfac, importe: @movimiento.importe, montonota: @movimiento.montonota, movimiento_id: @movimiento.movimiento_id, nfacrep: @movimiento.nfacrep, notacre: @movimiento.notacre, oridest: @movimiento.oridest, partida_id: @movimiento.partida_id, ped_id: @movimiento.ped_id, pedido: @movimiento.pedido, sancion: @movimiento.sancion, tipo2: @movimiento.tipo2, tipo_id: @movimiento.tipo_id, user_id: @movimiento.user_id } }
    assert_redirected_to movimiento_url(@movimiento)
  end

  test "should destroy movimiento" do
    assert_difference('Movimiento.count', -1) do
      delete movimiento_url(@movimiento)
    end

    assert_redirected_to movimientos_url
  end
end
