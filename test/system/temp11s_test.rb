require "application_system_test_case"

class Temp11sTest < ApplicationSystemTestCase
  setup do
    @temp11 = temp11s(:one)
  end

  test "visiting the index" do
    visit temp11s_url
    assert_selector "h1", text: "Temp11s"
  end

  test "creating a Temp11" do
    visit temp11s_url
    click_on "New Temp11"

    fill_in "Accion2011", with: @temp11.accion2011
    fill_in "Actividad", with: @temp11.actividad
    fill_in "Almacen", with: @temp11.almacen_id
    fill_in "Anexo", with: @temp11.anexo
    fill_in "Cantidad", with: @temp11.cantidad
    fill_in "Catalogo", with: @temp11.catalogo_id
    fill_in "Clave", with: @temp11.clave
    fill_in "Clue", with: @temp11.clue_id
    fill_in "Cp", with: @temp11.cp_id
    fill_in "Cveprog", with: @temp11.cveprog
    fill_in "Descripcion", with: @temp11.descripcion
    fill_in "Detped", with: @temp11.detped_id
    fill_in "Empates", with: @temp11.empates
    fill_in "Entrega", with: @temp11.entrega
    fill_in "Etiqueta", with: @temp11.etiqueta
    fill_in "Fiscal", with: @temp11.fiscal
    fill_in "Fuente", with: @temp11.fuente
    fill_in "Fuente", with: @temp11.fuente_id
    fill_in "Importe", with: @temp11.importe
    fill_in "Marca", with: @temp11.marca
    fill_in "Partida", with: @temp11.partida
    fill_in "Partida", with: @temp11.partida_id
    fill_in "Ped", with: @temp11.ped_id
    fill_in "Precio", with: @temp11.precio
    fill_in "Presentacion", with: @temp11.presentacion
    fill_in "Proceso", with: @temp11.proceso
    fill_in "Proceso", with: @temp11.proceso_id
    fill_in "Programa", with: @temp11.programa
    fill_in "Programa", with: @temp11.programa_id
    fill_in "Prov", with: @temp11.prov_id
    fill_in "Renglon", with: @temp11.renglon
    fill_in "Renglon", with: @temp11.renglon_id
    fill_in "Requisicion", with: @temp11.requisicion_id
    fill_in "Sinonimo", with: @temp11.sinonimo
    fill_in "Subprog2011", with: @temp11.subprog2011
    fill_in "Unidad", with: @temp11.unidad
    click_on "Create Temp11"

    assert_text "Temp11 was successfully created"
    click_on "Back"
  end

  test "updating a Temp11" do
    visit temp11s_url
    click_on "Edit", match: :first

    fill_in "Accion2011", with: @temp11.accion2011
    fill_in "Actividad", with: @temp11.actividad
    fill_in "Almacen", with: @temp11.almacen_id
    fill_in "Anexo", with: @temp11.anexo
    fill_in "Cantidad", with: @temp11.cantidad
    fill_in "Catalogo", with: @temp11.catalogo_id
    fill_in "Clave", with: @temp11.clave
    fill_in "Clue", with: @temp11.clue_id
    fill_in "Cp", with: @temp11.cp_id
    fill_in "Cveprog", with: @temp11.cveprog
    fill_in "Descripcion", with: @temp11.descripcion
    fill_in "Detped", with: @temp11.detped_id
    fill_in "Empates", with: @temp11.empates
    fill_in "Entrega", with: @temp11.entrega
    fill_in "Etiqueta", with: @temp11.etiqueta
    fill_in "Fiscal", with: @temp11.fiscal
    fill_in "Fuente", with: @temp11.fuente
    fill_in "Fuente", with: @temp11.fuente_id
    fill_in "Importe", with: @temp11.importe
    fill_in "Marca", with: @temp11.marca
    fill_in "Partida", with: @temp11.partida
    fill_in "Partida", with: @temp11.partida_id
    fill_in "Ped", with: @temp11.ped_id
    fill_in "Precio", with: @temp11.precio
    fill_in "Presentacion", with: @temp11.presentacion
    fill_in "Proceso", with: @temp11.proceso
    fill_in "Proceso", with: @temp11.proceso_id
    fill_in "Programa", with: @temp11.programa
    fill_in "Programa", with: @temp11.programa_id
    fill_in "Prov", with: @temp11.prov_id
    fill_in "Renglon", with: @temp11.renglon
    fill_in "Renglon", with: @temp11.renglon_id
    fill_in "Requisicion", with: @temp11.requisicion_id
    fill_in "Sinonimo", with: @temp11.sinonimo
    fill_in "Subprog2011", with: @temp11.subprog2011
    fill_in "Unidad", with: @temp11.unidad
    click_on "Update Temp11"

    assert_text "Temp11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp11" do
    visit temp11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp11 was successfully destroyed"
  end
end
