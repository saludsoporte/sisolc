require "application_system_test_case"

class LotesTest < ApplicationSystemTestCase
  setup do
    @lote = lotes(:one)
  end

  test "visiting the index" do
    visit lotes_url
    assert_selector "h1", text: "Lotes"
  end

  test "creating a Lote" do
    visit lotes_url
    click_on "New Lote"

    fill_in "Abono", with: @lote.abono
    fill_in "Almacen", with: @lote.almacen_id
    fill_in "Barras", with: @lote.barras
    fill_in "Caducidad", with: @lote.caducidad
    fill_in "Cantidadp", with: @lote.cantidadp
    fill_in "Cantidadu", with: @lote.cantidadu
    fill_in "Cargo", with: @lote.cargo
    fill_in "Cartacom", with: @lote.cartacom_id
    fill_in "Catalogo", with: @lote.catalogo_id
    fill_in "Detped", with: @lote.detped_id
    fill_in "Estado", with: @lote.estado_id
    fill_in "Etiqueta", with: @lote.etiqueta_id
    fill_in "Existencia", with: @lote.existencia
    fill_in "Fecha", with: @lote.fecha
    fill_in "Fuente", with: @lote.fuente_id
    fill_in "Iva", with: @lote.iva
    fill_in "Lote", with: @lote.lote
    fill_in "Lote", with: @lote.lote_id
    fill_in "Movimiento", with: @lote.movimiento_id
    fill_in "Observacion", with: @lote.observacion
    fill_in "Observsal", with: @lote.observsal
    fill_in "Partida", with: @lote.partida_id
    fill_in "Ped", with: @lote.ped_id
    fill_in "Precio", with: @lote.precio
    fill_in "Programa", with: @lote.programa_id
    fill_in "Prov", with: @lote.prov_id
    fill_in "Proyecto", with: @lote.proyecto_id
    fill_in "Renglon", with: @lote.renglon_id
    fill_in "Requisicion", with: @lote.requisicion_id
    fill_in "Salida", with: @lote.salida_id
    click_on "Create Lote"

    assert_text "Lote was successfully created"
    click_on "Back"
  end

  test "updating a Lote" do
    visit lotes_url
    click_on "Edit", match: :first

    fill_in "Abono", with: @lote.abono
    fill_in "Almacen", with: @lote.almacen_id
    fill_in "Barras", with: @lote.barras
    fill_in "Caducidad", with: @lote.caducidad
    fill_in "Cantidadp", with: @lote.cantidadp
    fill_in "Cantidadu", with: @lote.cantidadu
    fill_in "Cargo", with: @lote.cargo
    fill_in "Cartacom", with: @lote.cartacom_id
    fill_in "Catalogo", with: @lote.catalogo_id
    fill_in "Detped", with: @lote.detped_id
    fill_in "Estado", with: @lote.estado_id
    fill_in "Etiqueta", with: @lote.etiqueta_id
    fill_in "Existencia", with: @lote.existencia
    fill_in "Fecha", with: @lote.fecha
    fill_in "Fuente", with: @lote.fuente_id
    fill_in "Iva", with: @lote.iva
    fill_in "Lote", with: @lote.lote
    fill_in "Lote", with: @lote.lote_id
    fill_in "Movimiento", with: @lote.movimiento_id
    fill_in "Observacion", with: @lote.observacion
    fill_in "Observsal", with: @lote.observsal
    fill_in "Partida", with: @lote.partida_id
    fill_in "Ped", with: @lote.ped_id
    fill_in "Precio", with: @lote.precio
    fill_in "Programa", with: @lote.programa_id
    fill_in "Prov", with: @lote.prov_id
    fill_in "Proyecto", with: @lote.proyecto_id
    fill_in "Renglon", with: @lote.renglon_id
    fill_in "Requisicion", with: @lote.requisicion_id
    fill_in "Salida", with: @lote.salida_id
    click_on "Update Lote"

    assert_text "Lote was successfully updated"
    click_on "Back"
  end

  test "destroying a Lote" do
    visit lotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lote was successfully destroyed"
  end
end
