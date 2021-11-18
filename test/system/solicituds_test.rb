require "application_system_test_case"

class SolicitudsTest < ApplicationSystemTestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "visiting the index" do
    visit solicituds_url
    assert_selector "h1", text: "Solicituds"
  end

  test "creating a Solicitud" do
    visit solicituds_url
    click_on "New Solicitud"

    fill_in "Adqui", with: @solicitud.adqui_id
    check "Anexos" if @solicitud.anexos
    fill_in "Area", with: @solicitud.area_id
    fill_in "Estado", with: @solicitud.estado_id
    fill_in "Fuente", with: @solicitud.fuente_id
    fill_in "Importe", with: @solicitud.importe
    fill_in "Notas", with: @solicitud.notas
    fill_in "Partida", with: @solicitud.partida_id
    fill_in "Programa", with: @solicitud.programa_id
    fill_in "Proyecto", with: @solicitud.proyecto_id
    fill_in "Recepcion", with: @solicitud.recepcion
    fill_in "Renglon", with: @solicitud.renglon_id
    fill_in "Requisicion", with: @solicitud.requisicion_id
    fill_in "Techo", with: @solicitud.techo
    fill_in "Tipo", with: @solicitud.tipo_id
    fill_in "Tipotecho", with: @solicitud.tipotecho
    fill_in "User", with: @solicitud.user_id
    fill_in "Vobotecnico", with: @solicitud.vobotecnico_id
    click_on "Create Solicitud"

    assert_text "Solicitud was successfully created"
    click_on "Back"
  end

  test "updating a Solicitud" do
    visit solicituds_url
    click_on "Edit", match: :first

    fill_in "Adqui", with: @solicitud.adqui_id
    check "Anexos" if @solicitud.anexos
    fill_in "Area", with: @solicitud.area_id
    fill_in "Estado", with: @solicitud.estado_id
    fill_in "Fuente", with: @solicitud.fuente_id
    fill_in "Importe", with: @solicitud.importe
    fill_in "Notas", with: @solicitud.notas
    fill_in "Partida", with: @solicitud.partida_id
    fill_in "Programa", with: @solicitud.programa_id
    fill_in "Proyecto", with: @solicitud.proyecto_id
    fill_in "Recepcion", with: @solicitud.recepcion
    fill_in "Renglon", with: @solicitud.renglon_id
    fill_in "Requisicion", with: @solicitud.requisicion_id
    fill_in "Techo", with: @solicitud.techo
    fill_in "Tipo", with: @solicitud.tipo_id
    fill_in "Tipotecho", with: @solicitud.tipotecho
    fill_in "User", with: @solicitud.user_id
    fill_in "Vobotecnico", with: @solicitud.vobotecnico_id
    click_on "Update Solicitud"

    assert_text "Solicitud was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitud" do
    visit solicituds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitud was successfully destroyed"
  end
end
