require "application_system_test_case"

class TempsTest < ApplicationSystemTestCase
  setup do
    @temp = temps(:one)
  end

  test "visiting the index" do
    visit temps_url
    assert_selector "h1", text: "Temps"
  end

  test "creating a Temp" do
    visit temps_url
    click_on "New Temp"

    fill_in "Almacen", with: @temp.almacen
    fill_in "Archivo", with: @temp.archivo
    fill_in "Articulo", with: @temp.articulo
    fill_in "Cantcanc", with: @temp.cantcanc
    fill_in "Cantfac", with: @temp.cantfac
    fill_in "Cantidad", with: @temp.cantidad
    fill_in "Clavepro", with: @temp.clavepro
    fill_in "Claveuni", with: @temp.claveuni
    fill_in "Comenta", with: @temp.comenta
    fill_in "Descripcion", with: @temp.descripcion
    fill_in "Elaboracion", with: @temp.elaboracion
    fill_in "Entrega", with: @temp.entrega
    fill_in "Etiqueta", with: @temp.etiqueta
    fill_in "Fuente", with: @temp.fuente
    fill_in "Iva", with: @temp.iva
    fill_in "Marca", with: @temp.marca
    fill_in "Nombreuni", with: @temp.nombreuni
    fill_in "Partida", with: @temp.partida
    fill_in "Pedido", with: @temp.pedido
    fill_in "Pedidounico", with: @temp.pedidounico
    fill_in "Preciouni", with: @temp.preciouni
    fill_in "Presentacion", with: @temp.presentacion
    fill_in "Proceso", with: @temp.proceso
    fill_in "Programa", with: @temp.programa
    fill_in "Proveedor", with: @temp.proveedor
    fill_in "Proyecto", with: @temp.proyecto
    fill_in "Requisicion", with: @temp.requisicion
    fill_in "Subprograma", with: @temp.subprograma
    click_on "Create Temp"

    assert_text "Temp was successfully created"
    click_on "Back"
  end

  test "updating a Temp" do
    visit temps_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @temp.almacen
    fill_in "Archivo", with: @temp.archivo
    fill_in "Articulo", with: @temp.articulo
    fill_in "Cantcanc", with: @temp.cantcanc
    fill_in "Cantfac", with: @temp.cantfac
    fill_in "Cantidad", with: @temp.cantidad
    fill_in "Clavepro", with: @temp.clavepro
    fill_in "Claveuni", with: @temp.claveuni
    fill_in "Comenta", with: @temp.comenta
    fill_in "Descripcion", with: @temp.descripcion
    fill_in "Elaboracion", with: @temp.elaboracion
    fill_in "Entrega", with: @temp.entrega
    fill_in "Etiqueta", with: @temp.etiqueta
    fill_in "Fuente", with: @temp.fuente
    fill_in "Iva", with: @temp.iva
    fill_in "Marca", with: @temp.marca
    fill_in "Nombreuni", with: @temp.nombreuni
    fill_in "Partida", with: @temp.partida
    fill_in "Pedido", with: @temp.pedido
    fill_in "Pedidounico", with: @temp.pedidounico
    fill_in "Preciouni", with: @temp.preciouni
    fill_in "Presentacion", with: @temp.presentacion
    fill_in "Proceso", with: @temp.proceso
    fill_in "Programa", with: @temp.programa
    fill_in "Proveedor", with: @temp.proveedor
    fill_in "Proyecto", with: @temp.proyecto
    fill_in "Requisicion", with: @temp.requisicion
    fill_in "Subprograma", with: @temp.subprograma
    click_on "Update Temp"

    assert_text "Temp was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp" do
    visit temps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp was successfully destroyed"
  end
end
