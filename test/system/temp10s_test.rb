require "application_system_test_case"

class Temp10sTest < ApplicationSystemTestCase
  setup do
    @temp10 = temp10s(:one)
  end

  test "visiting the index" do
    visit temp10s_url
    assert_selector "h1", text: "Temp10s"
  end

  test "creating a Temp10" do
    visit temp10s_url
    click_on "New Temp10"

    fill_in "Cantidad", with: @temp10.cantidad
    fill_in "Descripcio", with: @temp10.descripcio
    fill_in "Ejercicio", with: @temp10.ejercicio
    fill_in "Fiscal", with: @temp10.fiscal
    fill_in "Idarticulo", with: @temp10.idarticulo
    fill_in "Idpedido", with: @temp10.idpedido
    fill_in "Marca", with: @temp10.marca
    fill_in "Nombrefuen", with: @temp10.nombrefuen
    fill_in "Nombreunid", with: @temp10.nombreunid
    fill_in "Partida", with: @temp10.partida
    fill_in "Preciounit", with: @temp10.preciounit
    fill_in "Presentaci", with: @temp10.presentaci
    fill_in "Requisicio", with: @temp10.requisicio
    click_on "Create Temp10"

    assert_text "Temp10 was successfully created"
    click_on "Back"
  end

  test "updating a Temp10" do
    visit temp10s_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @temp10.cantidad
    fill_in "Descripcio", with: @temp10.descripcio
    fill_in "Ejercicio", with: @temp10.ejercicio
    fill_in "Fiscal", with: @temp10.fiscal
    fill_in "Idarticulo", with: @temp10.idarticulo
    fill_in "Idpedido", with: @temp10.idpedido
    fill_in "Marca", with: @temp10.marca
    fill_in "Nombrefuen", with: @temp10.nombrefuen
    fill_in "Nombreunid", with: @temp10.nombreunid
    fill_in "Partida", with: @temp10.partida
    fill_in "Preciounit", with: @temp10.preciounit
    fill_in "Presentaci", with: @temp10.presentaci
    fill_in "Requisicio", with: @temp10.requisicio
    click_on "Update Temp10"

    assert_text "Temp10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp10" do
    visit temp10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp10 was successfully destroyed"
  end
end
