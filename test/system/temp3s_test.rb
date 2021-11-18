require "application_system_test_case"

class Temp3sTest < ApplicationSystemTestCase
  setup do
    @temp3 = temp3s(:one)
  end

  test "visiting the index" do
    visit temp3s_url
    assert_selector "h1", text: "Temp3s"
  end

  test "creating a Temp3" do
    visit temp3s_url
    click_on "New Temp3"

    fill_in "Adq", with: @temp3.adq_id
    fill_in "Almacen", with: @temp3.almacen_id
    fill_in "Clues", with: @temp3.clues_id
    fill_in "Condiciones", with: @temp3.condiciones_id
    fill_in "Contrato", with: @temp3.contrato
    fill_in "Cp", with: @temp3.cp_id
    fill_in "Da", with: @temp3.da_id
    fill_in "Dg", with: @temp3.dg_id
    fill_in "Entrega", with: @temp3.entrega
    fill_in "Estado", with: @temp3.estado_id
    fill_in "Facfianza", with: @temp3.facfianza
    fill_in "Fecha", with: @temp3.fecha
    fill_in "Fianza", with: @temp3.fianza_id
    fill_in "Fuente", with: @temp3.fuente_id
    fill_in "Id", with: @temp3.id
    fill_in "Iva", with: @temp3.iva
    fill_in "Jda", with: @temp3.jda_id
    fill_in "Montoreq", with: @temp3.montoreq
    fill_in "Montoreq2", with: @temp3.montoreq2
    fill_in "Montoreq3", with: @temp3.montoreq3
    fill_in "Montoreq4", with: @temp3.montoreq4
    fill_in "Observaciones", with: @temp3.observaciones
    fill_in "Partida", with: @temp3.partida_id
    fill_in "Pena", with: @temp3.pena
    fill_in "Proceso", with: @temp3.proceso_id
    fill_in "Programa", with: @temp3.programa_id
    fill_in "Proveedor", with: @temp3.proveedor_id
    fill_in "Renglon", with: @temp3.renglon_id
    fill_in "Reqexterna", with: @temp3.reqexterna
    fill_in "Requi2", with: @temp3.requi2_id
    fill_in "Requi3", with: @temp3.requi3_id
    fill_in "Requi4", with: @temp3.requi4_id
    fill_in "Requisicion", with: @temp3.requisicion_id
    fill_in "So", with: @temp3.so_id
    fill_in "Subtotal", with: @temp3.subtotal
    fill_in "Tipo", with: @temp3.tipo_id
    fill_in "Total", with: @temp3.total
    fill_in "User", with: @temp3.user_id
    click_on "Create Temp3"

    assert_text "Temp3 was successfully created"
    click_on "Back"
  end

  test "updating a Temp3" do
    visit temp3s_url
    click_on "Edit", match: :first

    fill_in "Adq", with: @temp3.adq_id
    fill_in "Almacen", with: @temp3.almacen_id
    fill_in "Clues", with: @temp3.clues_id
    fill_in "Condiciones", with: @temp3.condiciones_id
    fill_in "Contrato", with: @temp3.contrato
    fill_in "Cp", with: @temp3.cp_id
    fill_in "Da", with: @temp3.da_id
    fill_in "Dg", with: @temp3.dg_id
    fill_in "Entrega", with: @temp3.entrega
    fill_in "Estado", with: @temp3.estado_id
    fill_in "Facfianza", with: @temp3.facfianza
    fill_in "Fecha", with: @temp3.fecha
    fill_in "Fianza", with: @temp3.fianza_id
    fill_in "Fuente", with: @temp3.fuente_id
    fill_in "Id", with: @temp3.id
    fill_in "Iva", with: @temp3.iva
    fill_in "Jda", with: @temp3.jda_id
    fill_in "Montoreq", with: @temp3.montoreq
    fill_in "Montoreq2", with: @temp3.montoreq2
    fill_in "Montoreq3", with: @temp3.montoreq3
    fill_in "Montoreq4", with: @temp3.montoreq4
    fill_in "Observaciones", with: @temp3.observaciones
    fill_in "Partida", with: @temp3.partida_id
    fill_in "Pena", with: @temp3.pena
    fill_in "Proceso", with: @temp3.proceso_id
    fill_in "Programa", with: @temp3.programa_id
    fill_in "Proveedor", with: @temp3.proveedor_id
    fill_in "Renglon", with: @temp3.renglon_id
    fill_in "Reqexterna", with: @temp3.reqexterna
    fill_in "Requi2", with: @temp3.requi2_id
    fill_in "Requi3", with: @temp3.requi3_id
    fill_in "Requi4", with: @temp3.requi4_id
    fill_in "Requisicion", with: @temp3.requisicion_id
    fill_in "So", with: @temp3.so_id
    fill_in "Subtotal", with: @temp3.subtotal
    fill_in "Tipo", with: @temp3.tipo_id
    fill_in "Total", with: @temp3.total
    fill_in "User", with: @temp3.user_id
    click_on "Update Temp3"

    assert_text "Temp3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp3" do
    visit temp3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp3 was successfully destroyed"
  end
end
