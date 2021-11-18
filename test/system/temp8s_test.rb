require "application_system_test_case"

class Temp8sTest < ApplicationSystemTestCase
  setup do
    @temp8 = temp8s(:one)
  end

  test "visiting the index" do
    visit temp8s_url
    assert_selector "h1", text: "Temp8s"
  end

  test "creating a Temp8" do
    visit temp8s_url
    click_on "New Temp8"

    fill_in "Almacen", with: @temp8.almacen_id
    check "Anexos" if @temp8.anexos
    fill_in "Caducidad", with: @temp8.caducidad
    fill_in "Cantidad", with: @temp8.cantidad
    fill_in "Capacitacion", with: @temp8.capacitacion
    fill_in "Clave", with: @temp8.clave_id
    fill_in "Clues", with: @temp8.clues_id
    fill_in "Descripcion", with: @temp8.descripcion
    fill_in "Entregas", with: @temp8.entregas
    fill_in "Marca mod", with: @temp8.marca_mod
    fill_in "Muestra", with: @temp8.muestra
    fill_in "Notas", with: @temp8.notas
    fill_in "Partida", with: @temp8.partida_id
    fill_in "Ped", with: @temp8.ped_id
    fill_in "Precio", with: @temp8.precio
    fill_in "Presentacion", with: @temp8.presentacion
    fill_in "Proceso", with: @temp8.proceso_id
    fill_in "Renglon", with: @temp8.renglon_id
    fill_in "Requisicion", with: @temp8.requisicion_id
    fill_in "Solicitud", with: @temp8.solicitud_id
    fill_in "User", with: @temp8.user_id
    click_on "Create Temp8"

    assert_text "Temp8 was successfully created"
    click_on "Back"
  end

  test "updating a Temp8" do
    visit temp8s_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @temp8.almacen_id
    check "Anexos" if @temp8.anexos
    fill_in "Caducidad", with: @temp8.caducidad
    fill_in "Cantidad", with: @temp8.cantidad
    fill_in "Capacitacion", with: @temp8.capacitacion
    fill_in "Clave", with: @temp8.clave_id
    fill_in "Clues", with: @temp8.clues_id
    fill_in "Descripcion", with: @temp8.descripcion
    fill_in "Entregas", with: @temp8.entregas
    fill_in "Marca mod", with: @temp8.marca_mod
    fill_in "Muestra", with: @temp8.muestra
    fill_in "Notas", with: @temp8.notas
    fill_in "Partida", with: @temp8.partida_id
    fill_in "Ped", with: @temp8.ped_id
    fill_in "Precio", with: @temp8.precio
    fill_in "Presentacion", with: @temp8.presentacion
    fill_in "Proceso", with: @temp8.proceso_id
    fill_in "Renglon", with: @temp8.renglon_id
    fill_in "Requisicion", with: @temp8.requisicion_id
    fill_in "Solicitud", with: @temp8.solicitud_id
    fill_in "User", with: @temp8.user_id
    click_on "Update Temp8"

    assert_text "Temp8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp8" do
    visit temp8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp8 was successfully destroyed"
  end
end
