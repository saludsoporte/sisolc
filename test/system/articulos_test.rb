require "application_system_test_case"

class ArticulosTest < ApplicationSystemTestCase
  setup do
    @articulo = articulos(:one)
  end

  test "visiting the index" do
    visit articulos_url
    assert_selector "h1", text: "Articulos"
  end

  test "creating a Articulo" do
    visit articulos_url
    click_on "New Articulo"

    fill_in "Adquirido", with: @articulo.adquirido
    fill_in "Almacen", with: @articulo.almacen_id
    check "Anexos" if @articulo.anexos
    fill_in "Caducidad", with: @articulo.caducidad
    fill_in "Cancelado", with: @articulo.cancelado
    fill_in "Cantidad", with: @articulo.cantidad
    fill_in "Capacitacion", with: @articulo.capacitacion
    fill_in "Catalogo", with: @articulo.catalogo_id
    fill_in "Clave", with: @articulo.clave_id
    fill_in "Clues", with: @articulo.clues_id
    fill_in "Comprar", with: @articulo.comprar
    fill_in "Descripcion", with: @articulo.descripcion
    fill_in "Entregas", with: @articulo.entregas
    fill_in "Marca mod", with: @articulo.marca_mod
    fill_in "Muestra", with: @articulo.muestra
    fill_in "Notas", with: @articulo.notas
    fill_in "Partida", with: @articulo.partida_id
    fill_in "Ped", with: @articulo.ped_id
    fill_in "Precio", with: @articulo.precio
    fill_in "Presentacion", with: @articulo.presentacion
    fill_in "Proceso", with: @articulo.proceso_id
    fill_in "Renglon", with: @articulo.renglon_id
    fill_in "Requisicion", with: @articulo.requisicion_id
    fill_in "Solicitud", with: @articulo.solicitud_id
    fill_in "User", with: @articulo.user_id
    click_on "Create Articulo"

    assert_text "Articulo was successfully created"
    click_on "Back"
  end

  test "updating a Articulo" do
    visit articulos_url
    click_on "Edit", match: :first

    fill_in "Adquirido", with: @articulo.adquirido
    fill_in "Almacen", with: @articulo.almacen_id
    check "Anexos" if @articulo.anexos
    fill_in "Caducidad", with: @articulo.caducidad
    fill_in "Cancelado", with: @articulo.cancelado
    fill_in "Cantidad", with: @articulo.cantidad
    fill_in "Capacitacion", with: @articulo.capacitacion
    fill_in "Catalogo", with: @articulo.catalogo_id
    fill_in "Clave", with: @articulo.clave_id
    fill_in "Clues", with: @articulo.clues_id
    fill_in "Comprar", with: @articulo.comprar
    fill_in "Descripcion", with: @articulo.descripcion
    fill_in "Entregas", with: @articulo.entregas
    fill_in "Marca mod", with: @articulo.marca_mod
    fill_in "Muestra", with: @articulo.muestra
    fill_in "Notas", with: @articulo.notas
    fill_in "Partida", with: @articulo.partida_id
    fill_in "Ped", with: @articulo.ped_id
    fill_in "Precio", with: @articulo.precio
    fill_in "Presentacion", with: @articulo.presentacion
    fill_in "Proceso", with: @articulo.proceso_id
    fill_in "Renglon", with: @articulo.renglon_id
    fill_in "Requisicion", with: @articulo.requisicion_id
    fill_in "Solicitud", with: @articulo.solicitud_id
    fill_in "User", with: @articulo.user_id
    click_on "Update Articulo"

    assert_text "Articulo was successfully updated"
    click_on "Back"
  end

  test "destroying a Articulo" do
    visit articulos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articulo was successfully destroyed"
  end
end
