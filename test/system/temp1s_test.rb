require "application_system_test_case"

class Temp1sTest < ApplicationSystemTestCase
  setup do
    @temp1 = temp1s(:one)
  end

  test "visiting the index" do
    visit temp1s_url
    assert_selector "h1", text: "Temp1s"
  end

  test "creating a Temp1" do
    visit temp1s_url
    click_on "New Temp1"

    fill_in "Cantidad", with: @temp1.cantidad
    fill_in "Descripcio", with: @temp1.descripcio
    fill_in "Ejercicio", with: @temp1.ejercicio
    fill_in "Fiscal", with: @temp1.fiscal
    fill_in "Idarticulo", with: @temp1.idarticulo
    fill_in "Idpedido", with: @temp1.idpedido
    fill_in "Marca", with: @temp1.marca
    fill_in "Nombrefuen", with: @temp1.nombrefuen
    fill_in "Nombreunid", with: @temp1.nombreunid
    fill_in "Partida", with: @temp1.partida
    fill_in "Preciounit", with: @temp1.preciounit
    fill_in "Presentaci", with: @temp1.presentaci
    fill_in "Requisicio", with: @temp1.requisicio
    click_on "Create Temp1"

    assert_text "Temp1 was successfully created"
    click_on "Back"
  end

  test "updating a Temp1" do
    visit temp1s_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @temp1.cantidad
    fill_in "Descripcio", with: @temp1.descripcio
    fill_in "Ejercicio", with: @temp1.ejercicio
    fill_in "Fiscal", with: @temp1.fiscal
    fill_in "Idarticulo", with: @temp1.idarticulo
    fill_in "Idpedido", with: @temp1.idpedido
    fill_in "Marca", with: @temp1.marca
    fill_in "Nombrefuen", with: @temp1.nombrefuen
    fill_in "Nombreunid", with: @temp1.nombreunid
    fill_in "Partida", with: @temp1.partida
    fill_in "Preciounit", with: @temp1.preciounit
    fill_in "Presentaci", with: @temp1.presentaci
    fill_in "Requisicio", with: @temp1.requisicio
    click_on "Update Temp1"

    assert_text "Temp1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp1" do
    visit temp1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp1 was successfully destroyed"
  end
end
