require "application_system_test_case"

class DomiciliosTest < ApplicationSystemTestCase
  setup do
    @domicilio = domicilios(:one)
  end

  test "visiting the index" do
    visit domicilios_url
    assert_selector "h1", text: "Domicilios"
  end

  test "creating a Domicilio" do
    visit domicilios_url
    click_on "New Domicilio"

    fill_in "Calle", with: @domicilio.calle
    fill_in "Colonia", with: @domicilio.colonia
    fill_in "Cp", with: @domicilio.cp
    fill_in "Entidad", with: @domicilio.entidad_id
    fill_in "Muni", with: @domicilio.muni_id
    fill_in "Municipio", with: @domicilio.municipio
    fill_in "Numero", with: @domicilio.numero
    fill_in "Observa", with: @domicilio.observa
    fill_in "Paciente", with: @domicilio.paciente_id
    fill_in "Telefono", with: @domicilio.telefono
    fill_in "User", with: @domicilio.user_id
    click_on "Create Domicilio"

    assert_text "Domicilio was successfully created"
    click_on "Back"
  end

  test "updating a Domicilio" do
    visit domicilios_url
    click_on "Edit", match: :first

    fill_in "Calle", with: @domicilio.calle
    fill_in "Colonia", with: @domicilio.colonia
    fill_in "Cp", with: @domicilio.cp
    fill_in "Entidad", with: @domicilio.entidad_id
    fill_in "Muni", with: @domicilio.muni_id
    fill_in "Municipio", with: @domicilio.municipio
    fill_in "Numero", with: @domicilio.numero
    fill_in "Observa", with: @domicilio.observa
    fill_in "Paciente", with: @domicilio.paciente_id
    fill_in "Telefono", with: @domicilio.telefono
    fill_in "User", with: @domicilio.user_id
    click_on "Update Domicilio"

    assert_text "Domicilio was successfully updated"
    click_on "Back"
  end

  test "destroying a Domicilio" do
    visit domicilios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Domicilio was successfully destroyed"
  end
end
