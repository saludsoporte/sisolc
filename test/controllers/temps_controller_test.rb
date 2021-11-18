require "test_helper"

class TempsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp = temps(:one)
  end

  test "should get index" do
    get temps_url
    assert_response :success
  end

  test "should get new" do
    get new_temp_url
    assert_response :success
  end

  test "should create temp" do
    assert_difference('Temp.count') do
      post temps_url, params: { temp: { almacen: @temp.almacen, archivo: @temp.archivo, articulo: @temp.articulo, cantcanc: @temp.cantcanc, cantfac: @temp.cantfac, cantidad: @temp.cantidad, clavepro: @temp.clavepro, claveuni: @temp.claveuni, comenta: @temp.comenta, descripcion: @temp.descripcion, elaboracion: @temp.elaboracion, entrega: @temp.entrega, etiqueta: @temp.etiqueta, fuente: @temp.fuente, iva: @temp.iva, marca: @temp.marca, nombreuni: @temp.nombreuni, partida: @temp.partida, pedido: @temp.pedido, pedidounico: @temp.pedidounico, preciouni: @temp.preciouni, presentacion: @temp.presentacion, proceso: @temp.proceso, programa: @temp.programa, proveedor: @temp.proveedor, proyecto: @temp.proyecto, requisicion: @temp.requisicion, subprograma: @temp.subprograma } }
    end

    assert_redirected_to temp_url(Temp.last)
  end

  test "should show temp" do
    get temp_url(@temp)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp_url(@temp)
    assert_response :success
  end

  test "should update temp" do
    patch temp_url(@temp), params: { temp: { almacen: @temp.almacen, archivo: @temp.archivo, articulo: @temp.articulo, cantcanc: @temp.cantcanc, cantfac: @temp.cantfac, cantidad: @temp.cantidad, clavepro: @temp.clavepro, claveuni: @temp.claveuni, comenta: @temp.comenta, descripcion: @temp.descripcion, elaboracion: @temp.elaboracion, entrega: @temp.entrega, etiqueta: @temp.etiqueta, fuente: @temp.fuente, iva: @temp.iva, marca: @temp.marca, nombreuni: @temp.nombreuni, partida: @temp.partida, pedido: @temp.pedido, pedidounico: @temp.pedidounico, preciouni: @temp.preciouni, presentacion: @temp.presentacion, proceso: @temp.proceso, programa: @temp.programa, proveedor: @temp.proveedor, proyecto: @temp.proyecto, requisicion: @temp.requisicion, subprograma: @temp.subprograma } }
    assert_redirected_to temp_url(@temp)
  end

  test "should destroy temp" do
    assert_difference('Temp.count', -1) do
      delete temp_url(@temp)
    end

    assert_redirected_to temps_url
  end
end
