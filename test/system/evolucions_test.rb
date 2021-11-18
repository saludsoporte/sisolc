require "application_system_test_case"

class EvolucionsTest < ApplicationSystemTestCase
  setup do
    @evolucion = evolucions(:one)
  end

  test "visiting the index" do
    visit evolucions_url
    assert_selector "h1", text: "Evolucions"
  end

  test "creating a Evolucion" do
    visit evolucions_url
    click_on "New Evolucion"

    fill_in "Atencion", with: @evolucion.atencion_id
    fill_in "Condiciones", with: @evolucion.condiciones
    fill_in "Diagnosticos", with: @evolucion.diagnosticos
    fill_in "Fc", with: @evolucion.fc
    fill_in "Fecha", with: @evolucion.fecha
    fill_in "Fechaeg", with: @evolucion.fechaeg
    fill_in "Fr", with: @evolucion.fr
    fill_in "Paciente", with: @evolucion.paciente_id
    fill_in "Pendientes", with: @evolucion.pendientes
    fill_in "Pronostico", with: @evolucion.pronostico
    fill_in "Ta", with: @evolucion.ta
    fill_in "Temp", with: @evolucion.temp
    fill_in "Tipo", with: @evolucion.tipo_id
    fill_in "User", with: @evolucion.user_id
    click_on "Create Evolucion"

    assert_text "Evolucion was successfully created"
    click_on "Back"
  end

  test "updating a Evolucion" do
    visit evolucions_url
    click_on "Edit", match: :first

    fill_in "Atencion", with: @evolucion.atencion_id
    fill_in "Condiciones", with: @evolucion.condiciones
    fill_in "Diagnosticos", with: @evolucion.diagnosticos
    fill_in "Fc", with: @evolucion.fc
    fill_in "Fecha", with: @evolucion.fecha
    fill_in "Fechaeg", with: @evolucion.fechaeg
    fill_in "Fr", with: @evolucion.fr
    fill_in "Paciente", with: @evolucion.paciente_id
    fill_in "Pendientes", with: @evolucion.pendientes
    fill_in "Pronostico", with: @evolucion.pronostico
    fill_in "Ta", with: @evolucion.ta
    fill_in "Temp", with: @evolucion.temp
    fill_in "Tipo", with: @evolucion.tipo_id
    fill_in "User", with: @evolucion.user_id
    click_on "Update Evolucion"

    assert_text "Evolucion was successfully updated"
    click_on "Back"
  end

  test "destroying a Evolucion" do
    visit evolucions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evolucion was successfully destroyed"
  end
end
