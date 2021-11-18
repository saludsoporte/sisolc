require "application_system_test_case"

class Temp6sTest < ApplicationSystemTestCase
  setup do
    @temp6 = temp6s(:one)
  end

  test "visiting the index" do
    visit temp6s_url
    assert_selector "h1", text: "Temp6s"
  end

  test "creating a Temp6" do
    visit temp6s_url
    click_on "New Temp6"

    fill_in "Ciudad", with: @temp6.ciudad
    fill_in "Colonia", with: @temp6.colonia
    fill_in "Cp", with: @temp6.cp
    fill_in "Cvealma", with: @temp6.cvealma_id
    fill_in "Domicilio", with: @temp6.domicilio
    fill_in "Fax", with: @temp6.fax
    fill_in "Fiscal", with: @temp6.fiscal
    fill_in "Nombre", with: @temp6.nombre
    fill_in "Rfc", with: @temp6.rfc
    fill_in "Telefonos", with: @temp6.telefonos
    click_on "Create Temp6"

    assert_text "Temp6 was successfully created"
    click_on "Back"
  end

  test "updating a Temp6" do
    visit temp6s_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @temp6.ciudad
    fill_in "Colonia", with: @temp6.colonia
    fill_in "Cp", with: @temp6.cp
    fill_in "Cvealma", with: @temp6.cvealma_id
    fill_in "Domicilio", with: @temp6.domicilio
    fill_in "Fax", with: @temp6.fax
    fill_in "Fiscal", with: @temp6.fiscal
    fill_in "Nombre", with: @temp6.nombre
    fill_in "Rfc", with: @temp6.rfc
    fill_in "Telefonos", with: @temp6.telefonos
    click_on "Update Temp6"

    assert_text "Temp6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp6" do
    visit temp6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp6 was successfully destroyed"
  end
end
