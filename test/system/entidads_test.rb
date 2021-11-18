require "application_system_test_case"

class EntidadsTest < ApplicationSystemTestCase
  setup do
    @entidad = entidads(:one)
  end

  test "visiting the index" do
    visit entidads_url
    assert_selector "h1", text: "Entidads"
  end

  test "creating a Entidad" do
    visit entidads_url
    click_on "New Entidad"

    fill_in "Entidad", with: @entidad.entidad
    click_on "Create Entidad"

    assert_text "Entidad was successfully created"
    click_on "Back"
  end

  test "updating a Entidad" do
    visit entidads_url
    click_on "Edit", match: :first

    fill_in "Entidad", with: @entidad.entidad
    click_on "Update Entidad"

    assert_text "Entidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Entidad" do
    visit entidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entidad was successfully destroyed"
  end
end
