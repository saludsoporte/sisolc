require "application_system_test_case"

class AjustesTest < ApplicationSystemTestCase
  setup do
    @ajuste = ajustes(:one)
  end

  test "visiting the index" do
    visit ajustes_url
    assert_selector "h1", text: "Ajustes"
  end

  test "creating a Ajuste" do
    visit ajustes_url
    click_on "New Ajuste"

    fill_in "Ajuste", with: @ajuste.ajuste
    fill_in "Almacen", with: @ajuste.almacen_id
    fill_in "Caducidad", with: @ajuste.caducidad
    fill_in "Catalogo", with: @ajuste.catalogo_id
    fill_in "Descrip", with: @ajuste.descrip
    fill_in "Estado", with: @ajuste.estado_id
    fill_in "Existen", with: @ajuste.existen
    fill_in "Fecharep", with: @ajuste.fecharep
    fill_in "Fuente", with: @ajuste.fuente_id
    fill_in "Lote", with: @ajuste.lote
    fill_in "Lote", with: @ajuste.lote_id
    fill_in "Partida", with: @ajuste.partida_id
    fill_in "Precio", with: @ajuste.precio
    fill_in "Tipo", with: @ajuste.tipo_id
    click_on "Create Ajuste"

    assert_text "Ajuste was successfully created"
    click_on "Back"
  end

  test "updating a Ajuste" do
    visit ajustes_url
    click_on "Edit", match: :first

    fill_in "Ajuste", with: @ajuste.ajuste
    fill_in "Almacen", with: @ajuste.almacen_id
    fill_in "Caducidad", with: @ajuste.caducidad
    fill_in "Catalogo", with: @ajuste.catalogo_id
    fill_in "Descrip", with: @ajuste.descrip
    fill_in "Estado", with: @ajuste.estado_id
    fill_in "Existen", with: @ajuste.existen
    fill_in "Fecharep", with: @ajuste.fecharep
    fill_in "Fuente", with: @ajuste.fuente_id
    fill_in "Lote", with: @ajuste.lote
    fill_in "Lote", with: @ajuste.lote_id
    fill_in "Partida", with: @ajuste.partida_id
    fill_in "Precio", with: @ajuste.precio
    fill_in "Tipo", with: @ajuste.tipo_id
    click_on "Update Ajuste"

    assert_text "Ajuste was successfully updated"
    click_on "Back"
  end

  test "destroying a Ajuste" do
    visit ajustes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ajuste was successfully destroyed"
  end
end
