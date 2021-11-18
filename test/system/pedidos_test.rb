require "application_system_test_case"

class PedidosTest < ApplicationSystemTestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "visiting the index" do
    visit pedidos_url
    assert_selector "h1", text: "Pedidos"
  end

  test "creating a Pedido" do
    visit pedidos_url
    click_on "New Pedido"

    fill_in "Almacen", with: @pedido.almacen
    fill_in "Archivo", with: @pedido.archivo
    fill_in "Articulo", with: @pedido.articulo
    fill_in "Cantcanc", with: @pedido.cantcanc
    fill_in "Cantfac", with: @pedido.cantfac
    fill_in "Cantidad", with: @pedido.cantidad
    fill_in "Clavepro", with: @pedido.clavepro
    fill_in "Claveuni", with: @pedido.claveuni
    fill_in "Comenta", with: @pedido.comenta
    fill_in "Descripcion", with: @pedido.descripcion
    fill_in "Elaboracion", with: @pedido.elaboracion
    fill_in "Entrega", with: @pedido.entrega
    fill_in "Estado", with: @pedido.estado_id
    fill_in "Etiqueta", with: @pedido.etiqueta
    fill_in "Fuente", with: @pedido.fuente
    fill_in "Iva", with: @pedido.iva
    fill_in "Marca", with: @pedido.marca
    fill_in "Nombreuni", with: @pedido.nombreuni
    fill_in "Partida", with: @pedido.partida
    fill_in "Pedido", with: @pedido.pedido
    fill_in "Pedidounico", with: @pedido.pedidounico
    fill_in "Preciouni", with: @pedido.preciouni
    fill_in "Presentacion", with: @pedido.presentacion
    fill_in "Proceso", with: @pedido.proceso
    fill_in "Programa", with: @pedido.programa
    fill_in "Proveedor", with: @pedido.proveedor
    fill_in "Proyecto", with: @pedido.proyecto
    fill_in "Requisicion", with: @pedido.requisicion
    fill_in "Subprograma", with: @pedido.subprograma
    click_on "Create Pedido"

    assert_text "Pedido was successfully created"
    click_on "Back"
  end

  test "updating a Pedido" do
    visit pedidos_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @pedido.almacen
    fill_in "Archivo", with: @pedido.archivo
    fill_in "Articulo", with: @pedido.articulo
    fill_in "Cantcanc", with: @pedido.cantcanc
    fill_in "Cantfac", with: @pedido.cantfac
    fill_in "Cantidad", with: @pedido.cantidad
    fill_in "Clavepro", with: @pedido.clavepro
    fill_in "Claveuni", with: @pedido.claveuni
    fill_in "Comenta", with: @pedido.comenta
    fill_in "Descripcion", with: @pedido.descripcion
    fill_in "Elaboracion", with: @pedido.elaboracion
    fill_in "Entrega", with: @pedido.entrega
    fill_in "Estado", with: @pedido.estado_id
    fill_in "Etiqueta", with: @pedido.etiqueta
    fill_in "Fuente", with: @pedido.fuente
    fill_in "Iva", with: @pedido.iva
    fill_in "Marca", with: @pedido.marca
    fill_in "Nombreuni", with: @pedido.nombreuni
    fill_in "Partida", with: @pedido.partida
    fill_in "Pedido", with: @pedido.pedido
    fill_in "Pedidounico", with: @pedido.pedidounico
    fill_in "Preciouni", with: @pedido.preciouni
    fill_in "Presentacion", with: @pedido.presentacion
    fill_in "Proceso", with: @pedido.proceso
    fill_in "Programa", with: @pedido.programa
    fill_in "Proveedor", with: @pedido.proveedor
    fill_in "Proyecto", with: @pedido.proyecto
    fill_in "Requisicion", with: @pedido.requisicion
    fill_in "Subprograma", with: @pedido.subprograma
    click_on "Update Pedido"

    assert_text "Pedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido" do
    visit pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido was successfully destroyed"
  end
end
