require "test_helper"

class Temp9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp9 = temp9s(:one)
  end

  test "should get index" do
    get temp9s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp9_url
    assert_response :success
  end

  test "should create temp9" do
    assert_difference('Temp9.count') do
      post temp9s_url, params: { temp9: { almacen: @temp9.almacen, almacen_id: @temp9.almacen_id, caducidad: @temp9.caducidad, cantidadp: @temp9.cantidadp, catalogo_id: @temp9.catalogo_id, clave: @temp9.clave, descripcion: @temp9.descripcion, estado_id: @temp9.estado_id, existencia: @temp9.existencia, fuente: @temp9.fuente, fuente_id: @temp9.fuente_id, fuentecve: @temp9.fuentecve, lote: @temp9.lote, monto: @temp9.monto, movimiento_id: @temp9.movimiento_id, partida: @temp9.partida, partida_id: @temp9.partida_id, precio: @temp9.precio, presentacion: @temp9.presentacion, sinonimo: @temp9.sinonimo } }
    end

    assert_redirected_to temp9_url(Temp9.last)
  end

  test "should show temp9" do
    get temp9_url(@temp9)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp9_url(@temp9)
    assert_response :success
  end

  test "should update temp9" do
    patch temp9_url(@temp9), params: { temp9: { almacen: @temp9.almacen, almacen_id: @temp9.almacen_id, caducidad: @temp9.caducidad, cantidadp: @temp9.cantidadp, catalogo_id: @temp9.catalogo_id, clave: @temp9.clave, descripcion: @temp9.descripcion, estado_id: @temp9.estado_id, existencia: @temp9.existencia, fuente: @temp9.fuente, fuente_id: @temp9.fuente_id, fuentecve: @temp9.fuentecve, lote: @temp9.lote, monto: @temp9.monto, movimiento_id: @temp9.movimiento_id, partida: @temp9.partida, partida_id: @temp9.partida_id, precio: @temp9.precio, presentacion: @temp9.presentacion, sinonimo: @temp9.sinonimo } }
    assert_redirected_to temp9_url(@temp9)
  end

  test "should destroy temp9" do
    assert_difference('Temp9.count', -1) do
      delete temp9_url(@temp9)
    end

    assert_redirected_to temp9s_url
  end
end
