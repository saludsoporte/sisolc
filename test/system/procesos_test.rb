require "application_system_test_case"

class ProcesosTest < ApplicationSystemTestCase
  setup do
    @proceso = procesos(:one)
  end

  test "visiting the index" do
    visit procesos_url
    assert_selector "h1", text: "Procesos"
  end

  test "creating a Proceso" do
    visit procesos_url
    click_on "New Proceso"

    fill_in "Estado", with: @proceso.estado_id
    fill_in "Fecha", with: @proceso.fecha
    fill_in "Observacion", with: @proceso.observacion
    fill_in "Partida", with: @proceso.partida_id
    fill_in "Pena", with: @proceso.pena
    fill_in "Proceso", with: @proceso.proceso
    fill_in "Sancionmax", with: @proceso.sancionmax
    fill_in "Tipo", with: @proceso.tipo_id
    fill_in "Tipopro", with: @proceso.tipopro_id
    click_on "Create Proceso"

    assert_text "Proceso was successfully created"
    click_on "Back"
  end

  test "updating a Proceso" do
    visit procesos_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @proceso.estado_id
    fill_in "Fecha", with: @proceso.fecha
    fill_in "Observacion", with: @proceso.observacion
    fill_in "Partida", with: @proceso.partida_id
    fill_in "Pena", with: @proceso.pena
    fill_in "Proceso", with: @proceso.proceso
    fill_in "Sancionmax", with: @proceso.sancionmax
    fill_in "Tipo", with: @proceso.tipo_id
    fill_in "Tipopro", with: @proceso.tipopro_id
    click_on "Update Proceso"

    assert_text "Proceso was successfully updated"
    click_on "Back"
  end

  test "destroying a Proceso" do
    visit procesos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proceso was successfully destroyed"
  end
end
