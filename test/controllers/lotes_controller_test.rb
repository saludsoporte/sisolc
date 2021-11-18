require "test_helper"

class LotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lote = lotes(:one)
  end

  test "should get index" do
    get lotes_url
    assert_response :success
  end

  test "should get new" do
    get new_lote_url
    assert_response :success
  end

  test "should create lote" do
    assert_difference('Lote.count') do
      post lotes_url, params: { lote: { abono: @lote.abono, almacen_id: @lote.almacen_id, barras: @lote.barras, caducidad: @lote.caducidad, cantidadp: @lote.cantidadp, cantidadu: @lote.cantidadu, cargo: @lote.cargo, cartacom_id: @lote.cartacom_id, catalogo_id: @lote.catalogo_id, detped_id: @lote.detped_id, estado_id: @lote.estado_id, etiqueta_id: @lote.etiqueta_id, existencia: @lote.existencia, fecha: @lote.fecha, fuente_id: @lote.fuente_id, iva: @lote.iva, lote: @lote.lote, lote_id: @lote.lote_id, movimiento_id: @lote.movimiento_id, observacion: @lote.observacion, observsal: @lote.observsal, partida_id: @lote.partida_id, ped_id: @lote.ped_id, precio: @lote.precio, programa_id: @lote.programa_id, prov_id: @lote.prov_id, proyecto_id: @lote.proyecto_id, renglon_id: @lote.renglon_id, requisicion_id: @lote.requisicion_id, salida_id: @lote.salida_id } }
    end

    assert_redirected_to lote_url(Lote.last)
  end

  test "should show lote" do
    get lote_url(@lote)
    assert_response :success
  end

  test "should get edit" do
    get edit_lote_url(@lote)
    assert_response :success
  end

  test "should update lote" do
    patch lote_url(@lote), params: { lote: { abono: @lote.abono, almacen_id: @lote.almacen_id, barras: @lote.barras, caducidad: @lote.caducidad, cantidadp: @lote.cantidadp, cantidadu: @lote.cantidadu, cargo: @lote.cargo, cartacom_id: @lote.cartacom_id, catalogo_id: @lote.catalogo_id, detped_id: @lote.detped_id, estado_id: @lote.estado_id, etiqueta_id: @lote.etiqueta_id, existencia: @lote.existencia, fecha: @lote.fecha, fuente_id: @lote.fuente_id, iva: @lote.iva, lote: @lote.lote, lote_id: @lote.lote_id, movimiento_id: @lote.movimiento_id, observacion: @lote.observacion, observsal: @lote.observsal, partida_id: @lote.partida_id, ped_id: @lote.ped_id, precio: @lote.precio, programa_id: @lote.programa_id, prov_id: @lote.prov_id, proyecto_id: @lote.proyecto_id, renglon_id: @lote.renglon_id, requisicion_id: @lote.requisicion_id, salida_id: @lote.salida_id } }
    assert_redirected_to lote_url(@lote)
  end

  test "should destroy lote" do
    assert_difference('Lote.count', -1) do
      delete lote_url(@lote)
    end

    assert_redirected_to lotes_url
  end
end
