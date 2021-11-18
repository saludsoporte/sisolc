require "application_system_test_case"

class Temp2sTest < ApplicationSystemTestCase
  setup do
    @temp2 = temp2s(:one)
  end

  test "visiting the index" do
    visit temp2s_url
    assert_selector "h1", text: "Temp2s"
  end

  test "creating a Temp2" do
    visit temp2s_url
    click_on "New Temp2"

    fill_in "Articulo", with: @temp2.articulo
    fill_in "Cantidad", with: @temp2.cantidad
    fill_in "Costo", with: @temp2.costo
    fill_in "Cveaccion", with: @temp2.cveaccion
    fill_in "Cveart", with: @temp2.cveart
    fill_in "Cvejur", with: @temp2.cvejur
    fill_in "Cveprog", with: @temp2.cveprog
    fill_in "Cvesubprog", with: @temp2.cvesubprog
    fill_in "Cveunidad", with: @temp2.cveunidad
    fill_in "Descripcion", with: @temp2.descripcion
    fill_in "Ff", with: @temp2.ff
    fill_in "Fuente", with: @temp2.fuente
    fill_in "Nom prog", with: @temp2.nom_prog
    fill_in "Nomaccion", with: @temp2.nomaccion
    fill_in "Nomsubprog", with: @temp2.nomsubprog
    fill_in "Nup", with: @temp2.nup
    fill_in "Obra", with: @temp2.obra
    fill_in "Observaciones", with: @temp2.observaciones
    fill_in "Partest", with: @temp2.partest
    fill_in "Partida", with: @temp2.partida
    fill_in "Presentacion", with: @temp2.presentacion
    fill_in "Progabrev", with: @temp2.progabrev
    fill_in "Programa", with: @temp2.programa
    fill_in "Rubro", with: @temp2.rubro
    fill_in "Sinonimo", with: @temp2.sinonimo
    fill_in "Subprograma", with: @temp2.subprograma
    fill_in "Unidad", with: @temp2.unidad
    fill_in "Uniresp", with: @temp2.uniresp
    click_on "Create Temp2"

    assert_text "Temp2 was successfully created"
    click_on "Back"
  end

  test "updating a Temp2" do
    visit temp2s_url
    click_on "Edit", match: :first

    fill_in "Articulo", with: @temp2.articulo
    fill_in "Cantidad", with: @temp2.cantidad
    fill_in "Costo", with: @temp2.costo
    fill_in "Cveaccion", with: @temp2.cveaccion
    fill_in "Cveart", with: @temp2.cveart
    fill_in "Cvejur", with: @temp2.cvejur
    fill_in "Cveprog", with: @temp2.cveprog
    fill_in "Cvesubprog", with: @temp2.cvesubprog
    fill_in "Cveunidad", with: @temp2.cveunidad
    fill_in "Descripcion", with: @temp2.descripcion
    fill_in "Ff", with: @temp2.ff
    fill_in "Fuente", with: @temp2.fuente
    fill_in "Nom prog", with: @temp2.nom_prog
    fill_in "Nomaccion", with: @temp2.nomaccion
    fill_in "Nomsubprog", with: @temp2.nomsubprog
    fill_in "Nup", with: @temp2.nup
    fill_in "Obra", with: @temp2.obra
    fill_in "Observaciones", with: @temp2.observaciones
    fill_in "Partest", with: @temp2.partest
    fill_in "Partida", with: @temp2.partida
    fill_in "Presentacion", with: @temp2.presentacion
    fill_in "Progabrev", with: @temp2.progabrev
    fill_in "Programa", with: @temp2.programa
    fill_in "Rubro", with: @temp2.rubro
    fill_in "Sinonimo", with: @temp2.sinonimo
    fill_in "Subprograma", with: @temp2.subprograma
    fill_in "Unidad", with: @temp2.unidad
    fill_in "Uniresp", with: @temp2.uniresp
    click_on "Update Temp2"

    assert_text "Temp2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp2" do
    visit temp2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp2 was successfully destroyed"
  end
end
