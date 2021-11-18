require "application_system_test_case"

class ContabilidadsTest < ApplicationSystemTestCase
  setup do
    @contabilidad = contabilidads(:one)
  end

  test "visiting the index" do
    visit contabilidads_url
    assert_selector "h1", text: "Contabilidads"
  end

  test "creating a Contabilidad" do
    visit contabilidads_url
    click_on "New Contabilidad"

    fill_in "Almacen", with: @contabilidad.almacen_id
    fill_in "Cuenta", with: @contabilidad.cuenta
    fill_in "Fuente", with: @contabilidad.fuente_id
    fill_in "Partida", with: @contabilidad.partida_id
    fill_in "Programa", with: @contabilidad.programa_id
    fill_in "Prov", with: @contabilidad.prov_id
    fill_in "Proyecto", with: @contabilidad.proyecto_id
    fill_in "Sistema", with: @contabilidad.sistema_id
    fill_in "Tipo", with: @contabilidad.tipo_id
    fill_in "User", with: @contabilidad.user_id
    click_on "Create Contabilidad"

    assert_text "Contabilidad was successfully created"
    click_on "Back"
  end

  test "updating a Contabilidad" do
    visit contabilidads_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @contabilidad.almacen_id
    fill_in "Cuenta", with: @contabilidad.cuenta
    fill_in "Fuente", with: @contabilidad.fuente_id
    fill_in "Partida", with: @contabilidad.partida_id
    fill_in "Programa", with: @contabilidad.programa_id
    fill_in "Prov", with: @contabilidad.prov_id
    fill_in "Proyecto", with: @contabilidad.proyecto_id
    fill_in "Sistema", with: @contabilidad.sistema_id
    fill_in "Tipo", with: @contabilidad.tipo_id
    fill_in "User", with: @contabilidad.user_id
    click_on "Update Contabilidad"

    assert_text "Contabilidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Contabilidad" do
    visit contabilidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contabilidad was successfully destroyed"
  end
end
