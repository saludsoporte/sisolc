require "application_system_test_case"

class PacienteIdsTest < ApplicationSystemTestCase
  setup do
    @paciente_id = paciente_ids(:one)
  end

  test "visiting the index" do
    visit paciente_ids_url
    assert_selector "h1", text: "Paciente Ids"
  end

  test "creating a Paciente" do
    visit paciente_ids_url
    click_on "New Paciente"

    fill_in "Afiliacion", with: @paciente_id.afiliacion
    fill_in "Institu", with: @paciente_id.institu_id
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "updating a Paciente" do
    visit paciente_ids_url
    click_on "Edit", match: :first

    fill_in "Afiliacion", with: @paciente_id.afiliacion
    fill_in "Institu", with: @paciente_id.institu_id
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "destroying a Paciente" do
    visit paciente_ids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paciente was successfully destroyed"
  end
end
