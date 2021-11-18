require "application_system_test_case"

class Temp21sTest < ApplicationSystemTestCase
  setup do
    @temp21 = temp21s(:one)
  end

  test "visiting the index" do
    visit temp21s_url
    assert_selector "h1", text: "Temp21s"
  end

  test "creating a Temp21" do
    visit temp21s_url
    click_on "New Temp21"

    fill_in "Almacen", with: @temp21.almacen
    fill_in "Almacen", with: @temp21.almacen_id
    fill_in "Caducidad", with: @temp21.caducidad
    fill_in "Cantidadp", with: @temp21.cantidadp
    fill_in "Catalogo", with: @temp21.catalogo_id
    fill_in "Clave", with: @temp21.clave
    fill_in "Descripcion", with: @temp21.descripcion
    fill_in "Estado", with: @temp21.estado_id
    fill_in "Existencia", with: @temp21.existencia
    fill_in "Fuente", with: @temp21.fuente
    fill_in "Fuente", with: @temp21.fuente_id
    fill_in "Fuentecve", with: @temp21.fuentecve
    fill_in "Lote", with: @temp21.lote
    fill_in "Monto", with: @temp21.monto
    fill_in "Movimiento", with: @temp21.movimiento_id
    fill_in "Partida", with: @temp21.partida
    fill_in "Partida", with: @temp21.partida_id
    fill_in "Precio", with: @temp21.precio
    fill_in "Presentacion", with: @temp21.presentacion
    fill_in "Sinonimo", with: @temp21.sinonimo
    click_on "Create Temp21"

    assert_text "Temp21 was successfully created"
    click_on "Back"
  end

  test "updating a Temp21" do
    visit temp21s_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @temp21.almacen
    fill_in "Almacen", with: @temp21.almacen_id
    fill_in "Caducidad", with: @temp21.caducidad
    fill_in "Cantidadp", with: @temp21.cantidadp
    fill_in "Catalogo", with: @temp21.catalogo_id
    fill_in "Clave", with: @temp21.clave
    fill_in "Descripcion", with: @temp21.descripcion
    fill_in "Estado", with: @temp21.estado_id
    fill_in "Existencia", with: @temp21.existencia
    fill_in "Fuente", with: @temp21.fuente
    fill_in "Fuente", with: @temp21.fuente_id
    fill_in "Fuentecve", with: @temp21.fuentecve
    fill_in "Lote", with: @temp21.lote
    fill_in "Monto", with: @temp21.monto
    fill_in "Movimiento", with: @temp21.movimiento_id
    fill_in "Partida", with: @temp21.partida
    fill_in "Partida", with: @temp21.partida_id
    fill_in "Precio", with: @temp21.precio
    fill_in "Presentacion", with: @temp21.presentacion
    fill_in "Sinonimo", with: @temp21.sinonimo
    click_on "Update Temp21"

    assert_text "Temp21 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp21" do
    visit temp21s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp21 was successfully destroyed"
  end
end
