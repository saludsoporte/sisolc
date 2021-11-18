require "application_system_test_case"

class FuentesTest < ApplicationSystemTestCase
  setup do
    @fuente = fuentes(:one)
  end

  test "visiting the index" do
    visit fuentes_url
    assert_selector "h1", text: "Fuentes"
  end

  test "creating a Fuente" do
    visit fuentes_url
    click_on "New Fuente"

    fill_in "Clave", with: @fuente.clave
    fill_in "Cuenta", with: @fuente.cuenta
    fill_in "Fuente", with: @fuente.fuente
    fill_in "Periodo", with: @fuente.periodo
    click_on "Create Fuente"

    assert_text "Fuente was successfully created"
    click_on "Back"
  end

  test "updating a Fuente" do
    visit fuentes_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @fuente.clave
    fill_in "Cuenta", with: @fuente.cuenta
    fill_in "Fuente", with: @fuente.fuente
    fill_in "Periodo", with: @fuente.periodo
    click_on "Update Fuente"

    assert_text "Fuente was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuente" do
    visit fuentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuente was successfully destroyed"
  end
end
