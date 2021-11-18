require "application_system_test_case"

class Temp14sTest < ApplicationSystemTestCase
  setup do
    @temp14 = temp14s(:one)
  end

  test "visiting the index" do
    visit temp14s_url
    assert_selector "h1", text: "Temp14s"
  end

  test "creating a Temp14" do
    visit temp14s_url
    click_on "New Temp14"

    fill_in "Accion2011", with: @temp14.accion2011
    fill_in "Actividad", with: @temp14.actividad
    fill_in "Almacen", with: @temp14.almacen_id
    fill_in "Anexo", with: @temp14.anexo
    fill_in "Cantidad", with: @temp14.cantidad
    fill_in "Catalogo", with: @temp14.catalogo_id
    fill_in "Clave", with: @temp14.clave
    fill_in "Clue", with: @temp14.clue_id
    fill_in "Cp", with: @temp14.cp_id
    fill_in "Cveprog", with: @temp14.cveprog
    fill_in "Descripcion", with: @temp14.descripcion
    fill_in "Detped", with: @temp14.detped_id
    fill_in "Empates", with: @temp14.empates
    fill_in "Entrega", with: @temp14.entrega
    fill_in "Fiscal", with: @temp14.fiscal
    fill_in "Fuente", with: @temp14.fuente
    fill_in "Fuente", with: @temp14.fuente_id
    fill_in "Importe", with: @temp14.importe
    fill_in "Marca", with: @temp14.marca
    fill_in "Partida", with: @temp14.partida
    fill_in "Partida", with: @temp14.partida_id
    fill_in "Ped", with: @temp14.ped_id
    fill_in "Precio", with: @temp14.precio
    fill_in "Presentacion", with: @temp14.presentacion
    fill_in "Proceso", with: @temp14.proceso
    fill_in "Proceso", with: @temp14.proceso_id
    fill_in "Programa", with: @temp14.programa
    fill_in "Programa", with: @temp14.programa_id
    fill_in "Prov", with: @temp14.prov_id
    fill_in "Renglon", with: @temp14.renglon
    fill_in "Renglon", with: @temp14.renglon_id
    fill_in "Requisicion", with: @temp14.requisicion_id
    fill_in "Sinonimo", with: @temp14.sinonimo
    fill_in "Subprog2011", with: @temp14.subprog2011
    fill_in "Unidad", with: @temp14.unidad
    click_on "Create Temp14"

    assert_text "Temp14 was successfully created"
    click_on "Back"
  end

  test "updating a Temp14" do
    visit temp14s_url
    click_on "Edit", match: :first

    fill_in "Accion2011", with: @temp14.accion2011
    fill_in "Actividad", with: @temp14.actividad
    fill_in "Almacen", with: @temp14.almacen_id
    fill_in "Anexo", with: @temp14.anexo
    fill_in "Cantidad", with: @temp14.cantidad
    fill_in "Catalogo", with: @temp14.catalogo_id
    fill_in "Clave", with: @temp14.clave
    fill_in "Clue", with: @temp14.clue_id
    fill_in "Cp", with: @temp14.cp_id
    fill_in "Cveprog", with: @temp14.cveprog
    fill_in "Descripcion", with: @temp14.descripcion
    fill_in "Detped", with: @temp14.detped_id
    fill_in "Empates", with: @temp14.empates
    fill_in "Entrega", with: @temp14.entrega
    fill_in "Fiscal", with: @temp14.fiscal
    fill_in "Fuente", with: @temp14.fuente
    fill_in "Fuente", with: @temp14.fuente_id
    fill_in "Importe", with: @temp14.importe
    fill_in "Marca", with: @temp14.marca
    fill_in "Partida", with: @temp14.partida
    fill_in "Partida", with: @temp14.partida_id
    fill_in "Ped", with: @temp14.ped_id
    fill_in "Precio", with: @temp14.precio
    fill_in "Presentacion", with: @temp14.presentacion
    fill_in "Proceso", with: @temp14.proceso
    fill_in "Proceso", with: @temp14.proceso_id
    fill_in "Programa", with: @temp14.programa
    fill_in "Programa", with: @temp14.programa_id
    fill_in "Prov", with: @temp14.prov_id
    fill_in "Renglon", with: @temp14.renglon
    fill_in "Renglon", with: @temp14.renglon_id
    fill_in "Requisicion", with: @temp14.requisicion_id
    fill_in "Sinonimo", with: @temp14.sinonimo
    fill_in "Subprog2011", with: @temp14.subprog2011
    fill_in "Unidad", with: @temp14.unidad
    click_on "Update Temp14"

    assert_text "Temp14 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp14" do
    visit temp14s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp14 was successfully destroyed"
  end
end
