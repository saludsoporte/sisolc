require "application_system_test_case"

class ReportesTest < ApplicationSystemTestCase
  setup do
    @reporte = reportes(:one)
  end

  test "visiting the index" do
    visit reportes_url
    assert_selector "h1", text: "Reportes"
  end

  test "creating a Reporte" do
    visit reportes_url
    click_on "New Reporte"

    fill_in "Cpfin", with: @reporte.cpfin
    fill_in "Cpini", with: @reporte.cpini
    fill_in "Desde", with: @reporte.desde
    fill_in "Hasta", with: @reporte.hasta
    fill_in "Rango1", with: @reporte.rango1
    fill_in "Rango2", with: @reporte.rango2
    fill_in "Reporte", with: @reporte.reporte
    fill_in "Sistema", with: @reporte.sistema_id
    fill_in "Texto", with: @reporte.texto
    fill_in "Unidad", with: @reporte.unidad
    fill_in "Usuario", with: @reporte.usuario
    click_on "Create Reporte"

    assert_text "Reporte was successfully created"
    click_on "Back"
  end

  test "updating a Reporte" do
    visit reportes_url
    click_on "Edit", match: :first

    fill_in "Cpfin", with: @reporte.cpfin
    fill_in "Cpini", with: @reporte.cpini
    fill_in "Desde", with: @reporte.desde
    fill_in "Hasta", with: @reporte.hasta
    fill_in "Rango1", with: @reporte.rango1
    fill_in "Rango2", with: @reporte.rango2
    fill_in "Reporte", with: @reporte.reporte
    fill_in "Sistema", with: @reporte.sistema_id
    fill_in "Texto", with: @reporte.texto
    fill_in "Unidad", with: @reporte.unidad
    fill_in "Usuario", with: @reporte.usuario
    click_on "Update Reporte"

    assert_text "Reporte was successfully updated"
    click_on "Back"
  end

  test "destroying a Reporte" do
    visit reportes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reporte was successfully destroyed"
  end
end
