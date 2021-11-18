require "application_system_test_case"

class Temp18sTest < ApplicationSystemTestCase
  setup do
    @temp18 = temp18s(:one)
  end

  test "visiting the index" do
    visit temp18s_url
    assert_selector "h1", text: "Temp18s"
  end

  test "creating a Temp18" do
    visit temp18s_url
    click_on "New Temp18"

    fill_in "Adq", with: @temp18.adq_id
    fill_in "Almacen", with: @temp18.almacen_id
    fill_in "Clues", with: @temp18.clues_id
    fill_in "Condiciones", with: @temp18.condiciones_id
    fill_in "Contrato", with: @temp18.contrato
    fill_in "Cp", with: @temp18.cp_id
    fill_in "Da", with: @temp18.da_id
    fill_in "Dg", with: @temp18.dg_id
    fill_in "Entrega", with: @temp18.entrega
    fill_in "Estado", with: @temp18.estado_id
    fill_in "Fecha", with: @temp18.fecha
    fill_in "Fianza", with: @temp18.fianza_id
    fill_in "Fuente", with: @temp18.fuente_id
    fill_in "Id", with: @temp18.id
    fill_in "Iva", with: @temp18.iva
    fill_in "Jda", with: @temp18.jda_id
    fill_in "Observaciones", with: @temp18.observaciones
    fill_in "Partida", with: @temp18.partida_id
    fill_in "Pena", with: @temp18.pena
    fill_in "Proceso", with: @temp18.proceso_id
    fill_in "Programa", with: @temp18.programa_id
    fill_in "Proveedor", with: @temp18.proveedor_id
    fill_in "Renglon", with: @temp18.renglon_id
    fill_in "Requisicion", with: @temp18.requisicion_id
    fill_in "So", with: @temp18.so_id
    fill_in "Subtotal", with: @temp18.subtotal
    fill_in "Tipo", with: @temp18.tipo_id
    fill_in "Total", with: @temp18.total
    fill_in "User", with: @temp18.user_id
    click_on "Create Temp18"

    assert_text "Temp18 was successfully created"
    click_on "Back"
  end

  test "updating a Temp18" do
    visit temp18s_url
    click_on "Edit", match: :first

    fill_in "Adq", with: @temp18.adq_id
    fill_in "Almacen", with: @temp18.almacen_id
    fill_in "Clues", with: @temp18.clues_id
    fill_in "Condiciones", with: @temp18.condiciones_id
    fill_in "Contrato", with: @temp18.contrato
    fill_in "Cp", with: @temp18.cp_id
    fill_in "Da", with: @temp18.da_id
    fill_in "Dg", with: @temp18.dg_id
    fill_in "Entrega", with: @temp18.entrega
    fill_in "Estado", with: @temp18.estado_id
    fill_in "Fecha", with: @temp18.fecha
    fill_in "Fianza", with: @temp18.fianza_id
    fill_in "Fuente", with: @temp18.fuente_id
    fill_in "Id", with: @temp18.id
    fill_in "Iva", with: @temp18.iva
    fill_in "Jda", with: @temp18.jda_id
    fill_in "Observaciones", with: @temp18.observaciones
    fill_in "Partida", with: @temp18.partida_id
    fill_in "Pena", with: @temp18.pena
    fill_in "Proceso", with: @temp18.proceso_id
    fill_in "Programa", with: @temp18.programa_id
    fill_in "Proveedor", with: @temp18.proveedor_id
    fill_in "Renglon", with: @temp18.renglon_id
    fill_in "Requisicion", with: @temp18.requisicion_id
    fill_in "So", with: @temp18.so_id
    fill_in "Subtotal", with: @temp18.subtotal
    fill_in "Tipo", with: @temp18.tipo_id
    fill_in "Total", with: @temp18.total
    fill_in "User", with: @temp18.user_id
    click_on "Update Temp18"

    assert_text "Temp18 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp18" do
    visit temp18s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp18 was successfully destroyed"
  end
end
