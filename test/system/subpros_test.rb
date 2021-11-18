require "application_system_test_case"

class SubprosTest < ApplicationSystemTestCase
  setup do
    @subpro = subpros(:one)
  end

  test "visiting the index" do
    visit subpros_url
    assert_selector "h1", text: "Subpros"
  end

  test "creating a Subpro" do
    visit subpros_url
    click_on "New Subpro"

    fill_in "Clave", with: @subpro.clave
    fill_in "Programa", with: @subpro.programa
    fill_in "Programa", with: @subpro.programa_id
    click_on "Create Subpro"

    assert_text "Subpro was successfully created"
    click_on "Back"
  end

  test "updating a Subpro" do
    visit subpros_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @subpro.clave
    fill_in "Programa", with: @subpro.programa
    fill_in "Programa", with: @subpro.programa_id
    click_on "Update Subpro"

    assert_text "Subpro was successfully updated"
    click_on "Back"
  end

  test "destroying a Subpro" do
    visit subpros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subpro was successfully destroyed"
  end
end
