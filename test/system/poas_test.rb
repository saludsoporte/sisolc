require "application_system_test_case"

class PoasTest < ApplicationSystemTestCase
  setup do
    @poa = poas(:one)
  end

  test "visiting the index" do
    visit poas_url
    assert_selector "h1", text: "Poas"
  end

  test "creating a Poa" do
    visit poas_url
    click_on "New Poa"

    fill_in "Accion", with: @poa.accion
    fill_in "Accion", with: @poa.accion_id
    fill_in "Afaspe", with: @poa.afaspe
    fill_in "Articulo", with: @poa.articulo
    fill_in "Cantidad", with: @poa.cantidad
    fill_in "Clave", with: @poa.clave_id
    fill_in "Clues", with: @poa.clues_id
    fill_in "Descripcion", with: @poa.descripcion
    fill_in "Fuente", with: @poa.fuente
    fill_in "Fuente", with: @poa.fuente_id
    fill_in "Intcauses", with: @poa.intcauses
    fill_in "Marca", with: @poa.marca
    fill_in "Nombreuni", with: @poa.nombreuni
    fill_in "Observacion", with: @poa.observacion
    fill_in "Partida", with: @poa.partida
    fill_in "Precioiva", with: @poa.precioiva
    fill_in "Preciolin", with: @poa.preciolin
    fill_in "Presentacion", with: @poa.presentacion
    fill_in "Presupuesto", with: @poa.presupuesto
    fill_in "Programa", with: @poa.programa
    fill_in "Sacp anio", with: @poa.sacp_anio
    fill_in "Sacp esq", with: @poa.sacp_esq
    fill_in "Sacp interno", with: @poa.sacp_interno
    fill_in "Sacp requisi", with: @poa.sacp_requisi
    fill_in "Sino", with: @poa.sino
    fill_in "Subprograma", with: @poa.subprograma
    click_on "Create Poa"

    assert_text "Poa was successfully created"
    click_on "Back"
  end

  test "updating a Poa" do
    visit poas_url
    click_on "Edit", match: :first

    fill_in "Accion", with: @poa.accion
    fill_in "Accion", with: @poa.accion_id
    fill_in "Afaspe", with: @poa.afaspe
    fill_in "Articulo", with: @poa.articulo
    fill_in "Cantidad", with: @poa.cantidad
    fill_in "Clave", with: @poa.clave_id
    fill_in "Clues", with: @poa.clues_id
    fill_in "Descripcion", with: @poa.descripcion
    fill_in "Fuente", with: @poa.fuente
    fill_in "Fuente", with: @poa.fuente_id
    fill_in "Intcauses", with: @poa.intcauses
    fill_in "Marca", with: @poa.marca
    fill_in "Nombreuni", with: @poa.nombreuni
    fill_in "Observacion", with: @poa.observacion
    fill_in "Partida", with: @poa.partida
    fill_in "Precioiva", with: @poa.precioiva
    fill_in "Preciolin", with: @poa.preciolin
    fill_in "Presentacion", with: @poa.presentacion
    fill_in "Presupuesto", with: @poa.presupuesto
    fill_in "Programa", with: @poa.programa
    fill_in "Sacp anio", with: @poa.sacp_anio
    fill_in "Sacp esq", with: @poa.sacp_esq
    fill_in "Sacp interno", with: @poa.sacp_interno
    fill_in "Sacp requisi", with: @poa.sacp_requisi
    fill_in "Sino", with: @poa.sino
    fill_in "Subprograma", with: @poa.subprograma
    click_on "Update Poa"

    assert_text "Poa was successfully updated"
    click_on "Back"
  end

  test "destroying a Poa" do
    visit poas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poa was successfully destroyed"
  end
end
