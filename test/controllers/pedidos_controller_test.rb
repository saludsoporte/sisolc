require "test_helper"

class PedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_url
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post pedidos_url, params: { pedido: { almacen: @pedido.almacen, archivo: @pedido.archivo, articulo: @pedido.articulo, cantcanc: @pedido.cantcanc, cantfac: @pedido.cantfac, cantidad: @pedido.cantidad, clavepro: @pedido.clavepro, claveuni: @pedido.claveuni, comenta: @pedido.comenta, descripcion: @pedido.descripcion, elaboracion: @pedido.elaboracion, entrega: @pedido.entrega, estado_id: @pedido.estado_id, etiqueta: @pedido.etiqueta, fuente: @pedido.fuente, iva: @pedido.iva, marca: @pedido.marca, nombreuni: @pedido.nombreuni, partida: @pedido.partida, pedido: @pedido.pedido, pedidounico: @pedido.pedidounico, preciouni: @pedido.preciouni, presentacion: @pedido.presentacion, proceso: @pedido.proceso, programa: @pedido.programa, proveedor: @pedido.proveedor, proyecto: @pedido.proyecto, requisicion: @pedido.requisicion, subprograma: @pedido.subprograma } }
    end

    assert_redirected_to pedido_url(Pedido.last)
  end

  test "should show pedido" do
    get pedido_url(@pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_url(@pedido)
    assert_response :success
  end

  test "should update pedido" do
    patch pedido_url(@pedido), params: { pedido: { almacen: @pedido.almacen, archivo: @pedido.archivo, articulo: @pedido.articulo, cantcanc: @pedido.cantcanc, cantfac: @pedido.cantfac, cantidad: @pedido.cantidad, clavepro: @pedido.clavepro, claveuni: @pedido.claveuni, comenta: @pedido.comenta, descripcion: @pedido.descripcion, elaboracion: @pedido.elaboracion, entrega: @pedido.entrega, estado_id: @pedido.estado_id, etiqueta: @pedido.etiqueta, fuente: @pedido.fuente, iva: @pedido.iva, marca: @pedido.marca, nombreuni: @pedido.nombreuni, partida: @pedido.partida, pedido: @pedido.pedido, pedidounico: @pedido.pedidounico, preciouni: @pedido.preciouni, presentacion: @pedido.presentacion, proceso: @pedido.proceso, programa: @pedido.programa, proveedor: @pedido.proveedor, proyecto: @pedido.proyecto, requisicion: @pedido.requisicion, subprograma: @pedido.subprograma } }
    assert_redirected_to pedido_url(@pedido)
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete pedido_url(@pedido)
    end

    assert_redirected_to pedidos_url
  end
end
