require "application_system_test_case"

class RenglonsTest < ApplicationSystemTestCase
  setup do
    @renglon = renglons(:one)
  end

  test "visiting the index" do
    visit renglons_url
    assert_selector "h1", text: "Renglons"
  end

  test "creating a Renglon" do
    visit renglons_url
    click_on "New Renglon"

    fill_in "Cant detpeds", with: @renglon.cant_detpeds
    fill_in "Clues", with: @renglon.clues_id
    fill_in "Descripcion", with: @renglon.descripcion
    fill_in "Ejercicio", with: @renglon.ejercicio
    fill_in "Etiqueta", with: @renglon.etiqueta_id
    fill_in "Importe", with: @renglon.importe
    fill_in "Partida", with: @renglon.partida_id
    fill_in "Programa", with: @renglon.programa_id
    fill_in "Proyecto", with: @renglon.proyecto_id
    fill_in "Renglon", with: @renglon.renglon
    fill_in "Requisicion", with: @renglon.requisicion_id
    click_on "Create Renglon"

    assert_text "Renglon was successfully created"
    click_on "Back"
  end

  test "updating a Renglon" do
    visit renglons_url
    click_on "Edit", match: :first

    fill_in "Cant detpeds", with: @renglon.cant_detpeds
    fill_in "Clues", with: @renglon.clues_id
    fill_in "Descripcion", with: @renglon.descripcion
    fill_in "Ejercicio", with: @renglon.ejercicio
    fill_in "Etiqueta", with: @renglon.etiqueta_id
    fill_in "Importe", with: @renglon.importe
    fill_in "Partida", with: @renglon.partida_id
    fill_in "Programa", with: @renglon.programa_id
    fill_in "Proyecto", with: @renglon.proyecto_id
    fill_in "Renglon", with: @renglon.renglon
    fill_in "Requisicion", with: @renglon.requisicion_id
    click_on "Update Renglon"

    assert_text "Renglon was successfully updated"
    click_on "Back"
  end

  test "destroying a Renglon" do
    visit renglons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Renglon was successfully destroyed"
  end
end
