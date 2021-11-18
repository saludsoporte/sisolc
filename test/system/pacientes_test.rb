require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "creating a Paciente" do
    visit pacientes_url
    click_on "New Paciente"

    fill_in "Cambio", with: @paciente.cambio
    fill_in "Curp", with: @paciente.curp
    fill_in "Materno", with: @paciente.materno
    fill_in "Nacimiento", with: @paciente.nacimiento
    fill_in "Nombre", with: @paciente.nombre
    fill_in "Observa", with: @paciente.observa
    fill_in "Paterno", with: @paciente.paterno
    fill_in "User", with: @paciente.user_id
    click_on "Create Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "updating a Paciente" do
    visit pacientes_url
    click_on "Edit", match: :first

    fill_in "Cambio", with: @paciente.cambio
    fill_in "Curp", with: @paciente.curp
    fill_in "Materno", with: @paciente.materno
    fill_in "Nacimiento", with: @paciente.nacimiento
    fill_in "Nombre", with: @paciente.nombre
    fill_in "Observa", with: @paciente.observa
    fill_in "Paterno", with: @paciente.paterno
    fill_in "User", with: @paciente.user_id
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "destroying a Paciente" do
    visit pacientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paciente was successfully destroyed"
  end
end
