require "application_system_test_case"

class Temp9sTest < ApplicationSystemTestCase
  setup do
    @temp9 = temp9s(:one)
  end

  test "visiting the index" do
    visit temp9s_url
    assert_selector "h1", text: "Temp9s"
  end

  test "creating a Temp9" do
    visit temp9s_url
    click_on "New Temp9"

    fill_in "Almacen", with: @temp9.almacen
    fill_in "Almacen", with: @temp9.almacen_id
    fill_in "Caducidad", with: @temp9.caducidad
    fill_in "Cantidadp", with: @temp9.cantidadp
    fill_in "Catalogo", with: @temp9.catalogo_id
    fill_in "Clave", with: @temp9.clave
    fill_in "Descripcion", with: @temp9.descripcion
    fill_in "Estado", with: @temp9.estado_id
    fill_in "Existencia", with: @temp9.existencia
    fill_in "Fuente", with: @temp9.fuente
    fill_in "Fuente", with: @temp9.fuente_id
    fill_in "Fuentecve", with: @temp9.fuentecve
    fill_in "Lote", with: @temp9.lote
    fill_in "Monto", with: @temp9.monto
    fill_in "Movimiento", with: @temp9.movimiento_id
    fill_in "Partida", with: @temp9.partida
    fill_in "Partida", with: @temp9.partida_id
    fill_in "Precio", with: @temp9.precio
    fill_in "Presentacion", with: @temp9.presentacion
    fill_in "Sinonimo", with: @temp9.sinonimo
    click_on "Create Temp9"

    assert_text "Temp9 was successfully created"
    click_on "Back"
  end

  test "updating a Temp9" do
    visit temp9s_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @temp9.almacen
    fill_in "Almacen", with: @temp9.almacen_id
    fill_in "Caducidad", with: @temp9.caducidad
    fill_in "Cantidadp", with: @temp9.cantidadp
    fill_in "Catalogo", with: @temp9.catalogo_id
    fill_in "Clave", with: @temp9.clave
    fill_in "Descripcion", with: @temp9.descripcion
    fill_in "Estado", with: @temp9.estado_id
    fill_in "Existencia", with: @temp9.existencia
    fill_in "Fuente", with: @temp9.fuente
    fill_in "Fuente", with: @temp9.fuente_id
    fill_in "Fuentecve", with: @temp9.fuentecve
    fill_in "Lote", with: @temp9.lote
    fill_in "Monto", with: @temp9.monto
    fill_in "Movimiento", with: @temp9.movimiento_id
    fill_in "Partida", with: @temp9.partida
    fill_in "Partida", with: @temp9.partida_id
    fill_in "Precio", with: @temp9.precio
    fill_in "Presentacion", with: @temp9.presentacion
    fill_in "Sinonimo", with: @temp9.sinonimo
    click_on "Update Temp9"

    assert_text "Temp9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp9" do
    visit temp9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp9 was successfully destroyed"
  end
end
