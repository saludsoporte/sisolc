require "application_system_test_case"

class CatalogosTest < ApplicationSystemTestCase
  setup do
    @catalogo = catalogos(:one)
  end

  test "visiting the index" do
    visit catalogos_url
    assert_selector "h1", text: "Catalogos"
  end

  test "creating a Catalogo" do
    visit catalogos_url
    click_on "New Catalogo"

    fill_in "Casuses basico", with: @catalogo.casuses_basico_id
    fill_in "Clave", with: @catalogo.clave
    fill_in "Descripcion", with: @catalogo.descripcion
    fill_in "Estado", with: @catalogo.estado_id
    fill_in "Existencia", with: @catalogo.existencia
    fill_in "Fecha", with: @catalogo.fecha
    fill_in "Fecha2", with: @catalogo.fecha2
    fill_in "Grupo", with: @catalogo.grupo_id
    fill_in "Iva", with: @catalogo.iva
    fill_in "Partida", with: @catalogo.partida
    fill_in "Partida", with: @catalogo.partida_id
    fill_in "Precio", with: @catalogo.precio
    fill_in "Precio2", with: @catalogo.precio2
    fill_in "Presentacion", with: @catalogo.presentacion
    fill_in "Proceso", with: @catalogo.proceso
    fill_in "Prog0", with: @catalogo.prog0_id
    fill_in "Prog1", with: @catalogo.prog1_id
    fill_in "Prog2", with: @catalogo.prog2_id
    fill_in "Prog3", with: @catalogo.prog3_id
    fill_in "Prog4", with: @catalogo.prog4_id
    fill_in "Prog5", with: @catalogo.prog5_id
    fill_in "Prog6", with: @catalogo.prog6_id
    fill_in "Prog7", with: @catalogo.prog7_id
    fill_in "Prog8", with: @catalogo.prog8_id
    fill_in "Prog9", with: @catalogo.prog9_id
    fill_in "Programa", with: @catalogo.programa_id
    fill_in "Tipo", with: @catalogo.tipo_id
    fill_in "Unidades", with: @catalogo.unidades
    click_on "Create Catalogo"

    assert_text "Catalogo was successfully created"
    click_on "Back"
  end

  test "updating a Catalogo" do
    visit catalogos_url
    click_on "Edit", match: :first

    fill_in "Casuses basico", with: @catalogo.casuses_basico_id
    fill_in "Clave", with: @catalogo.clave
    fill_in "Descripcion", with: @catalogo.descripcion
    fill_in "Estado", with: @catalogo.estado_id
    fill_in "Existencia", with: @catalogo.existencia
    fill_in "Fecha", with: @catalogo.fecha
    fill_in "Fecha2", with: @catalogo.fecha2
    fill_in "Grupo", with: @catalogo.grupo_id
    fill_in "Iva", with: @catalogo.iva
    fill_in "Partida", with: @catalogo.partida
    fill_in "Partida", with: @catalogo.partida_id
    fill_in "Precio", with: @catalogo.precio
    fill_in "Precio2", with: @catalogo.precio2
    fill_in "Presentacion", with: @catalogo.presentacion
    fill_in "Proceso", with: @catalogo.proceso
    fill_in "Prog0", with: @catalogo.prog0_id
    fill_in "Prog1", with: @catalogo.prog1_id
    fill_in "Prog2", with: @catalogo.prog2_id
    fill_in "Prog3", with: @catalogo.prog3_id
    fill_in "Prog4", with: @catalogo.prog4_id
    fill_in "Prog5", with: @catalogo.prog5_id
    fill_in "Prog6", with: @catalogo.prog6_id
    fill_in "Prog7", with: @catalogo.prog7_id
    fill_in "Prog8", with: @catalogo.prog8_id
    fill_in "Prog9", with: @catalogo.prog9_id
    fill_in "Programa", with: @catalogo.programa_id
    fill_in "Tipo", with: @catalogo.tipo_id
    fill_in "Unidades", with: @catalogo.unidades
    click_on "Update Catalogo"

    assert_text "Catalogo was successfully updated"
    click_on "Back"
  end

  test "destroying a Catalogo" do
    visit catalogos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catalogo was successfully destroyed"
  end
end
