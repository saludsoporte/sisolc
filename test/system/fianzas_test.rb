require "application_system_test_case"

class FianzasTest < ApplicationSystemTestCase
  setup do
    @fianza = fianzas(:one)
  end

  test "visiting the index" do
    visit fianzas_url
    assert_selector "h1", text: "Fianzas"
  end

  test "creating a Fianza" do
    visit fianzas_url
    click_on "New Fianza"

    fill_in "Clave", with: @fianza.clave
    fill_in "Contrato", with: @fianza.contrato_id
    fill_in "Contratos", with: @fianza.contratos
    fill_in "Estado", with: @fianza.estado_id
    fill_in "Fecha", with: @fianza.fecha
    fill_in "Imp peds", with: @fianza.imp_peds
    fill_in "Monto", with: @fianza.monto
    fill_in "Observa", with: @fianza.observa
    fill_in "Proceso", with: @fianza.proceso_id
    fill_in "Prov", with: @fianza.prov_id
    fill_in "Situacion", with: @fianza.situacion
    fill_in "Tipo", with: @fianza.tipo_id
    fill_in "User", with: @fianza.user_id
    fill_in "Vence", with: @fianza.vence
    click_on "Create Fianza"

    assert_text "Fianza was successfully created"
    click_on "Back"
  end

  test "updating a Fianza" do
    visit fianzas_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @fianza.clave
    fill_in "Contrato", with: @fianza.contrato_id
    fill_in "Contratos", with: @fianza.contratos
    fill_in "Estado", with: @fianza.estado_id
    fill_in "Fecha", with: @fianza.fecha
    fill_in "Imp peds", with: @fianza.imp_peds
    fill_in "Monto", with: @fianza.monto
    fill_in "Observa", with: @fianza.observa
    fill_in "Proceso", with: @fianza.proceso_id
    fill_in "Prov", with: @fianza.prov_id
    fill_in "Situacion", with: @fianza.situacion
    fill_in "Tipo", with: @fianza.tipo_id
    fill_in "User", with: @fianza.user_id
    fill_in "Vence", with: @fianza.vence
    click_on "Update Fianza"

    assert_text "Fianza was successfully updated"
    click_on "Back"
  end

  test "destroying a Fianza" do
    visit fianzas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fianza was successfully destroyed"
  end
end
