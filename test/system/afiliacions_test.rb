require "application_system_test_case"

class AfiliacionsTest < ApplicationSystemTestCase
  setup do
    @afiliacion = afiliacions(:one)
  end

  test "visiting the index" do
    visit afiliacions_url
    assert_selector "h1", text: "Afiliacions"
  end

  test "creating a Afiliacion" do
    visit afiliacions_url
    click_on "New Afiliacion"

    fill_in "Afiliacion", with: @afiliacion.afiliacion
    fill_in "Institu", with: @afiliacion.institu_id
    fill_in "Institucion", with: @afiliacion.institucion
    fill_in "Paciente", with: @afiliacion.paciente_id
    fill_in "User", with: @afiliacion.user_id
    click_on "Create Afiliacion"

    assert_text "Afiliacion was successfully created"
    click_on "Back"
  end

  test "updating a Afiliacion" do
    visit afiliacions_url
    click_on "Edit", match: :first

    fill_in "Afiliacion", with: @afiliacion.afiliacion
    fill_in "Institu", with: @afiliacion.institu_id
    fill_in "Institucion", with: @afiliacion.institucion
    fill_in "Paciente", with: @afiliacion.paciente_id
    fill_in "User", with: @afiliacion.user_id
    click_on "Update Afiliacion"

    assert_text "Afiliacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Afiliacion" do
    visit afiliacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Afiliacion was successfully destroyed"
  end
end
