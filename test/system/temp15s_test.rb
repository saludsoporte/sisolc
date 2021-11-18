require "application_system_test_case"

class Temp15sTest < ApplicationSystemTestCase
  setup do
    @temp15 = temp15s(:one)
  end

  test "visiting the index" do
    visit temp15s_url
    assert_selector "h1", text: "Temp15s"
  end

  test "creating a Temp15" do
    visit temp15s_url
    click_on "New Temp15"

    fill_in "Accion2011", with: @temp15.accion2011
    fill_in "Actividad", with: @temp15.actividad
    fill_in "Almacen", with: @temp15.almacen_id
    fill_in "Anexo", with: @temp15.anexo
    fill_in "Cantidad", with: @temp15.cantidad
    fill_in "Catalogo", with: @temp15.catalogo_id
    fill_in "Clave", with: @temp15.clave
    fill_in "Clue", with: @temp15.clue_id
    fill_in "Cp", with: @temp15.cp_id
    fill_in "Cveprog", with: @temp15.cveprog
    fill_in "Descripcion", with: @temp15.descripcion
    fill_in "Detped", with: @temp15.detped_id
    fill_in "Empates", with: @temp15.empates
    fill_in "Entrega", with: @temp15.entrega
    fill_in "Etiqueta", with: @temp15.etiqueta
    fill_in "Fiscal", with: @temp15.fiscal
    fill_in "Fuente", with: @temp15.fuente
    fill_in "Fuente", with: @temp15.fuente_id
    fill_in "Importe", with: @temp15.importe
    fill_in "Marca", with: @temp15.marca
    fill_in "Partida", with: @temp15.partida
    fill_in "Partida", with: @temp15.partida_id
    fill_in "Ped", with: @temp15.ped_id
    fill_in "Precio", with: @temp15.precio
    fill_in "Presentacion", with: @temp15.presentacion
    fill_in "Proceso", with: @temp15.proceso
    fill_in "Proceso", with: @temp15.proceso_id
    fill_in "Programa", with: @temp15.programa
    fill_in "Programa", with: @temp15.programa_id
    fill_in "Prov", with: @temp15.prov_id
    fill_in "Renglon", with: @temp15.renglon
    fill_in "Renglon", with: @temp15.renglon_id
    fill_in "Requisicion", with: @temp15.requisicion_id
    fill_in "Sinonimo", with: @temp15.sinonimo
    fill_in "Subprog2011", with: @temp15.subprog2011
    fill_in "Unidad", with: @temp15.unidad
    click_on "Create Temp15"

    assert_text "Temp15 was successfully created"
    click_on "Back"
  end

  test "updating a Temp15" do
    visit temp15s_url
    click_on "Edit", match: :first

    fill_in "Accion2011", with: @temp15.accion2011
    fill_in "Actividad", with: @temp15.actividad
    fill_in "Almacen", with: @temp15.almacen_id
    fill_in "Anexo", with: @temp15.anexo
    fill_in "Cantidad", with: @temp15.cantidad
    fill_in "Catalogo", with: @temp15.catalogo_id
    fill_in "Clave", with: @temp15.clave
    fill_in "Clue", with: @temp15.clue_id
    fill_in "Cp", with: @temp15.cp_id
    fill_in "Cveprog", with: @temp15.cveprog
    fill_in "Descripcion", with: @temp15.descripcion
    fill_in "Detped", with: @temp15.detped_id
    fill_in "Empates", with: @temp15.empates
    fill_in "Entrega", with: @temp15.entrega
    fill_in "Etiqueta", with: @temp15.etiqueta
    fill_in "Fiscal", with: @temp15.fiscal
    fill_in "Fuente", with: @temp15.fuente
    fill_in "Fuente", with: @temp15.fuente_id
    fill_in "Importe", with: @temp15.importe
    fill_in "Marca", with: @temp15.marca
    fill_in "Partida", with: @temp15.partida
    fill_in "Partida", with: @temp15.partida_id
    fill_in "Ped", with: @temp15.ped_id
    fill_in "Precio", with: @temp15.precio
    fill_in "Presentacion", with: @temp15.presentacion
    fill_in "Proceso", with: @temp15.proceso
    fill_in "Proceso", with: @temp15.proceso_id
    fill_in "Programa", with: @temp15.programa
    fill_in "Programa", with: @temp15.programa_id
    fill_in "Prov", with: @temp15.prov_id
    fill_in "Renglon", with: @temp15.renglon
    fill_in "Renglon", with: @temp15.renglon_id
    fill_in "Requisicion", with: @temp15.requisicion_id
    fill_in "Sinonimo", with: @temp15.sinonimo
    fill_in "Subprog2011", with: @temp15.subprog2011
    fill_in "Unidad", with: @temp15.unidad
    click_on "Update Temp15"

    assert_text "Temp15 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp15" do
    visit temp15s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp15 was successfully destroyed"
  end
end
