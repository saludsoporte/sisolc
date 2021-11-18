require "application_system_test_case"

class DetpedsTest < ApplicationSystemTestCase
  setup do
    @detped = detpeds(:one)
  end

  test "visiting the index" do
    visit detpeds_url
    assert_selector "h1", text: "Detpeds"
  end

  test "creating a Detped" do
    visit detpeds_url
    click_on "New Detped"

    fill_in "Caducidad", with: @detped.caducidad
    fill_in "Cancelado", with: @detped.cancelado
    fill_in "Cantidad", with: @detped.cantidad
    fill_in "Clave", with: @detped.clave_id
    fill_in "Descripcion", with: @detped.descripcion
    fill_in "Estado", with: @detped.estado_id
    fill_in "Importe", with: @detped.importe
    fill_in "Iva", with: @detped.iva
    fill_in "Marca mod", with: @detped.marca_mod
    fill_in "Ped", with: @detped.ped_id
    fill_in "Precio", with: @detped.precio
    fill_in "Presentacion", with: @detped.presentacion
    fill_in "Recibido", with: @detped.recibido
    fill_in "Renglon", with: @detped.renglon_id
    fill_in "Requisicion", with: @detped.requisicion_id
    fill_in "Total", with: @detped.total
    click_on "Create Detped"

    assert_text "Detped was successfully created"
    click_on "Back"
  end

  test "updating a Detped" do
    visit detpeds_url
    click_on "Edit", match: :first

    fill_in "Caducidad", with: @detped.caducidad
    fill_in "Cancelado", with: @detped.cancelado
    fill_in "Cantidad", with: @detped.cantidad
    fill_in "Clave", with: @detped.clave_id
    fill_in "Descripcion", with: @detped.descripcion
    fill_in "Estado", with: @detped.estado_id
    fill_in "Importe", with: @detped.importe
    fill_in "Iva", with: @detped.iva
    fill_in "Marca mod", with: @detped.marca_mod
    fill_in "Ped", with: @detped.ped_id
    fill_in "Precio", with: @detped.precio
    fill_in "Presentacion", with: @detped.presentacion
    fill_in "Recibido", with: @detped.recibido
    fill_in "Renglon", with: @detped.renglon_id
    fill_in "Requisicion", with: @detped.requisicion_id
    fill_in "Total", with: @detped.total
    click_on "Update Detped"

    assert_text "Detped was successfully updated"
    click_on "Back"
  end

  test "destroying a Detped" do
    visit detpeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detped was successfully destroyed"
  end
end
