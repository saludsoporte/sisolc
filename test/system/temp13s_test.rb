require "application_system_test_case"

class Temp13sTest < ApplicationSystemTestCase
  setup do
    @temp13 = temp13s(:one)
  end

  test "visiting the index" do
    visit temp13s_url
    assert_selector "h1", text: "Temp13s"
  end

  test "creating a Temp13" do
    visit temp13s_url
    click_on "New Temp13"

    fill_in "Accion2011", with: @temp13.accion2011
    fill_in "Actividad", with: @temp13.actividad
    fill_in "Almacen", with: @temp13.almacen_id
    fill_in "Anexo", with: @temp13.anexo
    fill_in "Cantidad", with: @temp13.cantidad
    fill_in "Catalogo", with: @temp13.catalogo_id
    fill_in "Clave", with: @temp13.clave
    fill_in "Clue", with: @temp13.clue_id
    fill_in "Cp", with: @temp13.cp_id
    fill_in "Cveprog", with: @temp13.cveprog
    fill_in "Descripcion", with: @temp13.descripcion
    fill_in "Detped", with: @temp13.detped_id
    fill_in "Empates", with: @temp13.empates
    fill_in "Entrega", with: @temp13.entrega
    fill_in "Fiscal", with: @temp13.fiscal
    fill_in "Fuente", with: @temp13.fuente
    fill_in "Fuente", with: @temp13.fuente_id
    fill_in "Importe", with: @temp13.importe
    fill_in "Marca", with: @temp13.marca
    fill_in "Partida", with: @temp13.partida
    fill_in "Partida", with: @temp13.partida_id
    fill_in "Ped", with: @temp13.ped_id
    fill_in "Precio", with: @temp13.precio
    fill_in "Presentacion", with: @temp13.presentacion
    fill_in "Proceso", with: @temp13.proceso
    fill_in "Proceso", with: @temp13.proceso_id
    fill_in "Programa", with: @temp13.programa
    fill_in "Programa", with: @temp13.programa_id
    fill_in "Prov", with: @temp13.prov_id
    fill_in "Renglon", with: @temp13.renglon
    fill_in "Renglon", with: @temp13.renglon_id
    fill_in "Requisicion", with: @temp13.requisicion_id
    fill_in "Sinonimo", with: @temp13.sinonimo
    fill_in "Subprog2011", with: @temp13.subprog2011
    fill_in "Unidad", with: @temp13.unidad
    click_on "Create Temp13"

    assert_text "Temp13 was successfully created"
    click_on "Back"
  end

  test "updating a Temp13" do
    visit temp13s_url
    click_on "Edit", match: :first

    fill_in "Accion2011", with: @temp13.accion2011
    fill_in "Actividad", with: @temp13.actividad
    fill_in "Almacen", with: @temp13.almacen_id
    fill_in "Anexo", with: @temp13.anexo
    fill_in "Cantidad", with: @temp13.cantidad
    fill_in "Catalogo", with: @temp13.catalogo_id
    fill_in "Clave", with: @temp13.clave
    fill_in "Clue", with: @temp13.clue_id
    fill_in "Cp", with: @temp13.cp_id
    fill_in "Cveprog", with: @temp13.cveprog
    fill_in "Descripcion", with: @temp13.descripcion
    fill_in "Detped", with: @temp13.detped_id
    fill_in "Empates", with: @temp13.empates
    fill_in "Entrega", with: @temp13.entrega
    fill_in "Fiscal", with: @temp13.fiscal
    fill_in "Fuente", with: @temp13.fuente
    fill_in "Fuente", with: @temp13.fuente_id
    fill_in "Importe", with: @temp13.importe
    fill_in "Marca", with: @temp13.marca
    fill_in "Partida", with: @temp13.partida
    fill_in "Partida", with: @temp13.partida_id
    fill_in "Ped", with: @temp13.ped_id
    fill_in "Precio", with: @temp13.precio
    fill_in "Presentacion", with: @temp13.presentacion
    fill_in "Proceso", with: @temp13.proceso
    fill_in "Proceso", with: @temp13.proceso_id
    fill_in "Programa", with: @temp13.programa
    fill_in "Programa", with: @temp13.programa_id
    fill_in "Prov", with: @temp13.prov_id
    fill_in "Renglon", with: @temp13.renglon
    fill_in "Renglon", with: @temp13.renglon_id
    fill_in "Requisicion", with: @temp13.requisicion_id
    fill_in "Sinonimo", with: @temp13.sinonimo
    fill_in "Subprog2011", with: @temp13.subprog2011
    fill_in "Unidad", with: @temp13.unidad
    click_on "Update Temp13"

    assert_text "Temp13 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp13" do
    visit temp13s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp13 was successfully destroyed"
  end
end
