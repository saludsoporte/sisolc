require "application_system_test_case"

class Temp4sTest < ApplicationSystemTestCase
  setup do
    @temp4 = temp4s(:one)
  end

  test "visiting the index" do
    visit temp4s_url
    assert_selector "h1", text: "Temp4s"
  end

  test "creating a Temp4" do
    visit temp4s_url
    click_on "New Temp4"

    fill_in "Caducidad", with: @temp4.caducidad
    fill_in "Cancelado", with: @temp4.cancelado
    fill_in "Cantidad", with: @temp4.cantidad
    fill_in "Clave", with: @temp4.clave_id
    fill_in "Descripcion", with: @temp4.descripcion
    fill_in "Estado", with: @temp4.estado_id
    fill_in "Importe", with: @temp4.importe
    fill_in "Iva", with: @temp4.iva
    fill_in "Marca mod", with: @temp4.marca_mod
    fill_in "Ped", with: @temp4.ped_id
    fill_in "Precio", with: @temp4.precio
    fill_in "Presentacion", with: @temp4.presentacion
    fill_in "Recibido", with: @temp4.recibido
    fill_in "Renglon", with: @temp4.renglon_id
    fill_in "Requisicion", with: @temp4.requisicion_id
    fill_in "Total", with: @temp4.total
    click_on "Create Temp4"

    assert_text "Temp4 was successfully created"
    click_on "Back"
  end

  test "updating a Temp4" do
    visit temp4s_url
    click_on "Edit", match: :first

    fill_in "Caducidad", with: @temp4.caducidad
    fill_in "Cancelado", with: @temp4.cancelado
    fill_in "Cantidad", with: @temp4.cantidad
    fill_in "Clave", with: @temp4.clave_id
    fill_in "Descripcion", with: @temp4.descripcion
    fill_in "Estado", with: @temp4.estado_id
    fill_in "Importe", with: @temp4.importe
    fill_in "Iva", with: @temp4.iva
    fill_in "Marca mod", with: @temp4.marca_mod
    fill_in "Ped", with: @temp4.ped_id
    fill_in "Precio", with: @temp4.precio
    fill_in "Presentacion", with: @temp4.presentacion
    fill_in "Recibido", with: @temp4.recibido
    fill_in "Renglon", with: @temp4.renglon_id
    fill_in "Requisicion", with: @temp4.requisicion_id
    fill_in "Total", with: @temp4.total
    click_on "Update Temp4"

    assert_text "Temp4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp4" do
    visit temp4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp4 was successfully destroyed"
  end
end
