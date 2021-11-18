require "application_system_test_case"

class ProvsTest < ApplicationSystemTestCase
  setup do
    @prov = provs(:one)
  end

  test "visiting the index" do
    visit provs_url
    assert_selector "h1", text: "Provs"
  end

  test "creating a Prov" do
    visit provs_url
    click_on "New Prov"

    fill_in "Ciudad", with: @prov.ciudad
    fill_in "Colonia", with: @prov.colonia
    fill_in "Cp", with: @prov.cp
    fill_in "Cvealma", with: @prov.cvealma_id
    fill_in "Domicilio", with: @prov.domicilio
    fill_in "Fax", with: @prov.fax
    fill_in "Fiscal", with: @prov.fiscal
    fill_in "Nombre", with: @prov.nombre
    fill_in "Rfc", with: @prov.rfc
    fill_in "Situacion", with: @prov.situacion_id
    fill_in "Telefonos", with: @prov.telefonos
    click_on "Create Prov"

    assert_text "Prov was successfully created"
    click_on "Back"
  end

  test "updating a Prov" do
    visit provs_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @prov.ciudad
    fill_in "Colonia", with: @prov.colonia
    fill_in "Cp", with: @prov.cp
    fill_in "Cvealma", with: @prov.cvealma_id
    fill_in "Domicilio", with: @prov.domicilio
    fill_in "Fax", with: @prov.fax
    fill_in "Fiscal", with: @prov.fiscal
    fill_in "Nombre", with: @prov.nombre
    fill_in "Rfc", with: @prov.rfc
    fill_in "Situacion", with: @prov.situacion_id
    fill_in "Telefonos", with: @prov.telefonos
    click_on "Update Prov"

    assert_text "Prov was successfully updated"
    click_on "Back"
  end

  test "destroying a Prov" do
    visit provs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prov was successfully destroyed"
  end
end
