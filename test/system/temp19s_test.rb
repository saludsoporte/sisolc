require "application_system_test_case"

class Temp19sTest < ApplicationSystemTestCase
  setup do
    @temp19 = temp19s(:one)
  end

  test "visiting the index" do
    visit temp19s_url
    assert_selector "h1", text: "Temp19s"
  end

  test "creating a Temp19" do
    visit temp19s_url
    click_on "New Temp19"

    fill_in "Clue", with: @temp19.clue_id
    fill_in "Ejercicio", with: @temp19.ejercicio
    fill_in "Fuente", with: @temp19.fuente_id
    fill_in "Importe", with: @temp19.importe
    fill_in "Partida", with: @temp19.partida_id
    fill_in "Programa", with: @temp19.programa_id
    fill_in "Proyecto", with: @temp19.proyecto_id
    fill_in "Requisicion", with: @temp19.requisicion_id
    click_on "Create Temp19"

    assert_text "Temp19 was successfully created"
    click_on "Back"
  end

  test "updating a Temp19" do
    visit temp19s_url
    click_on "Edit", match: :first

    fill_in "Clue", with: @temp19.clue_id
    fill_in "Ejercicio", with: @temp19.ejercicio
    fill_in "Fuente", with: @temp19.fuente_id
    fill_in "Importe", with: @temp19.importe
    fill_in "Partida", with: @temp19.partida_id
    fill_in "Programa", with: @temp19.programa_id
    fill_in "Proyecto", with: @temp19.proyecto_id
    fill_in "Requisicion", with: @temp19.requisicion_id
    click_on "Update Temp19"

    assert_text "Temp19 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp19" do
    visit temp19s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp19 was successfully destroyed"
  end
end
