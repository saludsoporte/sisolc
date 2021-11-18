require "application_system_test_case"

class ProgramasTest < ApplicationSystemTestCase
  setup do
    @programa = programas(:one)
  end

  test "visiting the index" do
    visit programas_url
    assert_selector "h1", text: "Programas"
  end

  test "creating a Programa" do
    visit programas_url
    click_on "New Programa"

    fill_in "Clave", with: @programa.clave
    fill_in "Numpro", with: @programa.numpro
    fill_in "Programa", with: @programa.programa
    click_on "Create Programa"

    assert_text "Programa was successfully created"
    click_on "Back"
  end

  test "updating a Programa" do
    visit programas_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @programa.clave
    fill_in "Numpro", with: @programa.numpro
    fill_in "Programa", with: @programa.programa
    click_on "Update Programa"

    assert_text "Programa was successfully updated"
    click_on "Back"
  end

  test "destroying a Programa" do
    visit programas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Programa was successfully destroyed"
  end
end
