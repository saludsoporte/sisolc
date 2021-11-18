require "application_system_test_case"

class PedsTest < ApplicationSystemTestCase
  setup do
    @ped = peds(:one)
  end

  test "visiting the index" do
    visit peds_url
    assert_selector "h1", text: "Peds"
  end

  test "creating a Ped" do
    visit peds_url
    click_on "New Ped"

    fill_in "Adq", with: @ped.adq_id
    fill_in "Almacen", with: @ped.almacen_id
    fill_in "Clues", with: @ped.clues_id
    fill_in "Condiciones", with: @ped.condiciones_id
    fill_in "Contrato", with: @ped.contrato
    fill_in "Cp", with: @ped.cp_id
    fill_in "Da", with: @ped.da_id
    fill_in "Dg", with: @ped.dg_id
    fill_in "Entrega", with: @ped.entrega
    fill_in "Estado", with: @ped.estado_id
    fill_in "Facfianza", with: @ped.facfianza
    fill_in "Fecha", with: @ped.fecha
    fill_in "Fianza", with: @ped.fianza_id
    fill_in "Fuente", with: @ped.fuente_id
    fill_in "Iva", with: @ped.iva
    fill_in "Jda", with: @ped.jda_id
    fill_in "Montoreq", with: @ped.montoreq
    fill_in "Montoreq2", with: @ped.montoreq2
    fill_in "Montoreq3", with: @ped.montoreq3
    fill_in "Montoreq4", with: @ped.montoreq4
    fill_in "Observaciones", with: @ped.observaciones
    fill_in "Partida", with: @ped.partida_id
    fill_in "Pena", with: @ped.pena
    fill_in "Proceso", with: @ped.proceso_id
    fill_in "Programa", with: @ped.programa_id
    fill_in "Proveedor", with: @ped.proveedor_id
    fill_in "Renglon", with: @ped.renglon_id
    fill_in "Reqexterna", with: @ped.reqexterna
    fill_in "Requi2", with: @ped.requi2_id
    fill_in "Requi3", with: @ped.requi3_id
    fill_in "Requi4", with: @ped.requi4_id
    fill_in "Requi5", with: @ped.requi5_id
    fill_in "Requisicion", with: @ped.requisicion_id
    fill_in "So", with: @ped.so_id
    fill_in "Subtotal", with: @ped.subtotal
    fill_in "Tipo", with: @ped.tipo_id
    fill_in "Total", with: @ped.total
    fill_in "User", with: @ped.user_id
    click_on "Create Ped"

    assert_text "Ped was successfully created"
    click_on "Back"
  end

  test "updating a Ped" do
    visit peds_url
    click_on "Edit", match: :first

    fill_in "Adq", with: @ped.adq_id
    fill_in "Almacen", with: @ped.almacen_id
    fill_in "Clues", with: @ped.clues_id
    fill_in "Condiciones", with: @ped.condiciones_id
    fill_in "Contrato", with: @ped.contrato
    fill_in "Cp", with: @ped.cp_id
    fill_in "Da", with: @ped.da_id
    fill_in "Dg", with: @ped.dg_id
    fill_in "Entrega", with: @ped.entrega
    fill_in "Estado", with: @ped.estado_id
    fill_in "Facfianza", with: @ped.facfianza
    fill_in "Fecha", with: @ped.fecha
    fill_in "Fianza", with: @ped.fianza_id
    fill_in "Fuente", with: @ped.fuente_id
    fill_in "Iva", with: @ped.iva
    fill_in "Jda", with: @ped.jda_id
    fill_in "Montoreq", with: @ped.montoreq
    fill_in "Montoreq2", with: @ped.montoreq2
    fill_in "Montoreq3", with: @ped.montoreq3
    fill_in "Montoreq4", with: @ped.montoreq4
    fill_in "Observaciones", with: @ped.observaciones
    fill_in "Partida", with: @ped.partida_id
    fill_in "Pena", with: @ped.pena
    fill_in "Proceso", with: @ped.proceso_id
    fill_in "Programa", with: @ped.programa_id
    fill_in "Proveedor", with: @ped.proveedor_id
    fill_in "Renglon", with: @ped.renglon_id
    fill_in "Reqexterna", with: @ped.reqexterna
    fill_in "Requi2", with: @ped.requi2_id
    fill_in "Requi3", with: @ped.requi3_id
    fill_in "Requi4", with: @ped.requi4_id
    fill_in "Requi5", with: @ped.requi5_id
    fill_in "Requisicion", with: @ped.requisicion_id
    fill_in "So", with: @ped.so_id
    fill_in "Subtotal", with: @ped.subtotal
    fill_in "Tipo", with: @ped.tipo_id
    fill_in "Total", with: @ped.total
    fill_in "User", with: @ped.user_id
    click_on "Update Ped"

    assert_text "Ped was successfully updated"
    click_on "Back"
  end

  test "destroying a Ped" do
    visit peds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ped was successfully destroyed"
  end
end
