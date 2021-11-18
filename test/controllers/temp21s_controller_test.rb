require "test_helper"

class Temp21sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp21 = temp21s(:one)
  end

  test "should get index" do
    get temp21s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp21_url
    assert_response :success
  end

  test "should create temp21" do
    assert_difference('Temp21.count') do
      post temp21s_url, params: { temp21: { almacen: @temp21.almacen, almacen_id: @temp21.almacen_id, caducidad: @temp21.caducidad, cantidadp: @temp21.cantidadp, catalogo_id: @temp21.catalogo_id, clave: @temp21.clave, descripcion: @temp21.descripcion, estado_id: @temp21.estado_id, existencia: @temp21.existencia, fuente: @temp21.fuente, fuente_id: @temp21.fuente_id, fuentecve: @temp21.fuentecve, lote: @temp21.lote, monto: @temp21.monto, movimiento_id: @temp21.movimiento_id, partida: @temp21.partida, partida_id: @temp21.partida_id, precio: @temp21.precio, presentacion: @temp21.presentacion, sinonimo: @temp21.sinonimo } }
    end

    assert_redirected_to temp21_url(Temp21.last)
  end

  test "should show temp21" do
    get temp21_url(@temp21)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp21_url(@temp21)
    assert_response :success
  end

  test "should update temp21" do
    patch temp21_url(@temp21), params: { temp21: { almacen: @temp21.almacen, almacen_id: @temp21.almacen_id, caducidad: @temp21.caducidad, cantidadp: @temp21.cantidadp, catalogo_id: @temp21.catalogo_id, clave: @temp21.clave, descripcion: @temp21.descripcion, estado_id: @temp21.estado_id, existencia: @temp21.existencia, fuente: @temp21.fuente, fuente_id: @temp21.fuente_id, fuentecve: @temp21.fuentecve, lote: @temp21.lote, monto: @temp21.monto, movimiento_id: @temp21.movimiento_id, partida: @temp21.partida, partida_id: @temp21.partida_id, precio: @temp21.precio, presentacion: @temp21.presentacion, sinonimo: @temp21.sinonimo } }
    assert_redirected_to temp21_url(@temp21)
  end

  test "should destroy temp21" do
    assert_difference('Temp21.count', -1) do
      delete temp21_url(@temp21)
    end

    assert_redirected_to temp21s_url
  end
end
