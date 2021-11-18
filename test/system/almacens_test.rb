require "application_system_test_case"

class AlmacensTest < ApplicationSystemTestCase
  setup do
    @almacen = almacens(:one)
  end

  test "visiting the index" do
    visit almacens_url
    assert_selector "h1", text: "Almacens"
  end

  test "creating a Almacen" do
    visit almacens_url
    click_on "New Almacen"

    fill_in "Admoru", with: @almacen.admoru
    fill_in "Almac1", with: @almacen.almac1_id
    fill_in "Almac2", with: @almacen.almac2_id
    fill_in "Almac3", with: @almacen.almac3_id
    fill_in "Almac4", with: @almacen.almac4_id
    fill_in "Almac5", with: @almacen.almac5_id
    fill_in "Almac6", with: @almacen.almac6_id
    fill_in "Almac7", with: @almacen.almac7_id
    fill_in "Cierre1", with: @almacen.cierre1
    fill_in "Cierre2", with: @almacen.cierre2
    fill_in "Clue", with: @almacen.clue_id
    fill_in "Conta1", with: @almacen.conta1_id
    fill_in "Conta2", with: @almacen.conta2_id
    fill_in "Cp", with: @almacen.cp
    fill_in "Cpostal", with: @almacen.cpostal
    fill_in "Cuenta1", with: @almacen.cuenta1
    fill_in "Cuenta2", with: @almacen.cuenta2
    fill_in "Depende", with: @almacen.depende_id
    fill_in "Domicilio", with: @almacen.domicilio
    fill_in "Jefeu", with: @almacen.jefeu
    fill_in "Municipio", with: @almacen.municipio
    fill_in "Nombre", with: @almacen.nombre
    fill_in "Tipo", with: @almacen.tipo
    fill_in "Tipo", with: @almacen.tipo_id
    fill_in "User", with: @almacen.user_id
    click_on "Create Almacen"

    assert_text "Almacen was successfully created"
    click_on "Back"
  end

  test "updating a Almacen" do
    visit almacens_url
    click_on "Edit", match: :first

    fill_in "Admoru", with: @almacen.admoru
    fill_in "Almac1", with: @almacen.almac1_id
    fill_in "Almac2", with: @almacen.almac2_id
    fill_in "Almac3", with: @almacen.almac3_id
    fill_in "Almac4", with: @almacen.almac4_id
    fill_in "Almac5", with: @almacen.almac5_id
    fill_in "Almac6", with: @almacen.almac6_id
    fill_in "Almac7", with: @almacen.almac7_id
    fill_in "Cierre1", with: @almacen.cierre1
    fill_in "Cierre2", with: @almacen.cierre2
    fill_in "Clue", with: @almacen.clue_id
    fill_in "Conta1", with: @almacen.conta1_id
    fill_in "Conta2", with: @almacen.conta2_id
    fill_in "Cp", with: @almacen.cp
    fill_in "Cpostal", with: @almacen.cpostal
    fill_in "Cuenta1", with: @almacen.cuenta1
    fill_in "Cuenta2", with: @almacen.cuenta2
    fill_in "Depende", with: @almacen.depende_id
    fill_in "Domicilio", with: @almacen.domicilio
    fill_in "Jefeu", with: @almacen.jefeu
    fill_in "Municipio", with: @almacen.municipio
    fill_in "Nombre", with: @almacen.nombre
    fill_in "Tipo", with: @almacen.tipo
    fill_in "Tipo", with: @almacen.tipo_id
    fill_in "User", with: @almacen.user_id
    click_on "Update Almacen"

    assert_text "Almacen was successfully updated"
    click_on "Back"
  end

  test "destroying a Almacen" do
    visit almacens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Almacen was successfully destroyed"
  end
end
