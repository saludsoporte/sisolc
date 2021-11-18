require "application_system_test_case"

class MovimientosTest < ApplicationSystemTestCase
  setup do
    @movimiento = movimientos(:one)
  end

  test "visiting the index" do
    visit movimientos_url
    assert_selector "h1", text: "Movimientos"
  end

  test "creating a Movimiento" do
    visit movimientos_url
    click_on "New Movimiento"

    fill_in "Almacen", with: @movimiento.almacen_id
    fill_in "Consec", with: @movimiento.consec
    fill_in "Cve factura sacp", with: @movimiento.cve_factura_sacp
    fill_in "Descripcion", with: @movimiento.descripcion
    fill_in "Estado", with: @movimiento.estado_id
    fill_in "Facrep", with: @movimiento.facrep
    fill_in "Facrepc", with: @movimiento.facrepc
    fill_in "Factura", with: @movimiento.factura
    fill_in "Fecha", with: @movimiento.fecha
    fill_in "Fechafac", with: @movimiento.fechafac
    fill_in "Impfac", with: @movimiento.impfac
    fill_in "Importe", with: @movimiento.importe
    fill_in "Montonota", with: @movimiento.montonota
    fill_in "Movimiento", with: @movimiento.movimiento_id
    fill_in "Nfacrep", with: @movimiento.nfacrep
    fill_in "Notacre", with: @movimiento.notacre
    fill_in "Oridest", with: @movimiento.oridest
    fill_in "Partida", with: @movimiento.partida_id
    fill_in "Ped", with: @movimiento.ped_id
    fill_in "Pedido", with: @movimiento.pedido
    fill_in "Sancion", with: @movimiento.sancion
    fill_in "Tipo2", with: @movimiento.tipo2
    fill_in "Tipo", with: @movimiento.tipo_id
    fill_in "User", with: @movimiento.user_id
    click_on "Create Movimiento"

    assert_text "Movimiento was successfully created"
    click_on "Back"
  end

  test "updating a Movimiento" do
    visit movimientos_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @movimiento.almacen_id
    fill_in "Consec", with: @movimiento.consec
    fill_in "Cve factura sacp", with: @movimiento.cve_factura_sacp
    fill_in "Descripcion", with: @movimiento.descripcion
    fill_in "Estado", with: @movimiento.estado_id
    fill_in "Facrep", with: @movimiento.facrep
    fill_in "Facrepc", with: @movimiento.facrepc
    fill_in "Factura", with: @movimiento.factura
    fill_in "Fecha", with: @movimiento.fecha
    fill_in "Fechafac", with: @movimiento.fechafac
    fill_in "Impfac", with: @movimiento.impfac
    fill_in "Importe", with: @movimiento.importe
    fill_in "Montonota", with: @movimiento.montonota
    fill_in "Movimiento", with: @movimiento.movimiento_id
    fill_in "Nfacrep", with: @movimiento.nfacrep
    fill_in "Notacre", with: @movimiento.notacre
    fill_in "Oridest", with: @movimiento.oridest
    fill_in "Partida", with: @movimiento.partida_id
    fill_in "Ped", with: @movimiento.ped_id
    fill_in "Pedido", with: @movimiento.pedido
    fill_in "Sancion", with: @movimiento.sancion
    fill_in "Tipo2", with: @movimiento.tipo2
    fill_in "Tipo", with: @movimiento.tipo_id
    fill_in "User", with: @movimiento.user_id
    click_on "Update Movimiento"

    assert_text "Movimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Movimiento" do
    visit movimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movimiento was successfully destroyed"
  end
end
