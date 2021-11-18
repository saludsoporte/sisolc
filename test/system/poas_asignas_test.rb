require "application_system_test_case"

class PoasAsignasTest < ApplicationSystemTestCase
  setup do
    @poas_asigna = poas_asignas(:one)
  end

  test "visiting the index" do
    visit poas_asignas_url
    assert_selector "h1", text: "Poas Asignas"
  end

  test "creating a Poas asigna" do
    visit poas_asignas_url
    click_on "New Poas Asigna"

    fill_in "Almacen", with: @poas_asigna.almacen_id
    fill_in "Articulo", with: @poas_asigna.articulo
    fill_in "Cantidad", with: @poas_asigna.cantidad
    fill_in "Clave", with: @poas_asigna.clave_id
    fill_in "Clues", with: @poas_asigna.clues_id
    fill_in "Cve centro resp", with: @poas_asigna.cve_centro_resp
    fill_in "Cve presup", with: @poas_asigna.cve_presup
    fill_in "Descripcion", with: @poas_asigna.descripcion
    fill_in "Detpeds id 1", with: @poas_asigna.detpeds_id_1
    fill_in "Detpeds id 2", with: @poas_asigna.detpeds_id_2
    fill_in "Detpeds id 3", with: @poas_asigna.detpeds_id_3
    fill_in "Detpeds id 4", with: @poas_asigna.detpeds_id_4
    fill_in "Detpeds id 5", with: @poas_asigna.detpeds_id_5
    check "Empate" if @poas_asigna.empate
    fill_in "Entrega 1", with: @poas_asigna.entrega_1
    fill_in "Entrega 2", with: @poas_asigna.entrega_2
    fill_in "Entrega 3", with: @poas_asigna.entrega_3
    fill_in "Entrega 4", with: @poas_asigna.entrega_4
    fill_in "Entrega 5", with: @poas_asigna.entrega_5
    fill_in "Entrega fecha 1", with: @poas_asigna.entrega_fecha_1
    fill_in "Entrega fecha 2", with: @poas_asigna.entrega_fecha_2
    fill_in "Entrega fecha 3", with: @poas_asigna.entrega_fecha_3
    fill_in "Entrega fecha 4", with: @poas_asigna.entrega_fecha_4
    fill_in "Entrega fecha 5", with: @poas_asigna.entrega_fecha_5
    fill_in "Fuente", with: @poas_asigna.fuente_id
    fill_in "Iva", with: @poas_asigna.iva
    fill_in "Marca", with: @poas_asigna.marca
    fill_in "Poas", with: @poas_asigna.poas_id
    fill_in "Precio", with: @poas_asigna.precio
    fill_in "Presentacion", with: @poas_asigna.presentacion
    fill_in "Proceso", with: @poas_asigna.proceso_id
    fill_in "Proveedor", with: @poas_asigna.proveedor
    fill_in "Proveedor", with: @poas_asigna.proveedor_id
    fill_in "Sacp anio", with: @poas_asigna.sacp_anio
    fill_in "Sacp anio pago", with: @poas_asigna.sacp_anio_pago
    fill_in "Sacp esq", with: @poas_asigna.sacp_esq
    fill_in "Sacp interno", with: @poas_asigna.sacp_interno
    fill_in "Sacp interno pago", with: @poas_asigna.sacp_interno_pago
    fill_in "Sacp requisi", with: @poas_asigna.sacp_requisi
    fill_in "Sacp requisi pago", with: @poas_asigna.sacp_requisi_pago
    fill_in "Sino", with: @poas_asigna.sino
    click_on "Create Poas asigna"

    assert_text "Poas asigna was successfully created"
    click_on "Back"
  end

  test "updating a Poas asigna" do
    visit poas_asignas_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @poas_asigna.almacen_id
    fill_in "Articulo", with: @poas_asigna.articulo
    fill_in "Cantidad", with: @poas_asigna.cantidad
    fill_in "Clave", with: @poas_asigna.clave_id
    fill_in "Clues", with: @poas_asigna.clues_id
    fill_in "Cve centro resp", with: @poas_asigna.cve_centro_resp
    fill_in "Cve presup", with: @poas_asigna.cve_presup
    fill_in "Descripcion", with: @poas_asigna.descripcion
    fill_in "Detpeds id 1", with: @poas_asigna.detpeds_id_1
    fill_in "Detpeds id 2", with: @poas_asigna.detpeds_id_2
    fill_in "Detpeds id 3", with: @poas_asigna.detpeds_id_3
    fill_in "Detpeds id 4", with: @poas_asigna.detpeds_id_4
    fill_in "Detpeds id 5", with: @poas_asigna.detpeds_id_5
    check "Empate" if @poas_asigna.empate
    fill_in "Entrega 1", with: @poas_asigna.entrega_1
    fill_in "Entrega 2", with: @poas_asigna.entrega_2
    fill_in "Entrega 3", with: @poas_asigna.entrega_3
    fill_in "Entrega 4", with: @poas_asigna.entrega_4
    fill_in "Entrega 5", with: @poas_asigna.entrega_5
    fill_in "Entrega fecha 1", with: @poas_asigna.entrega_fecha_1
    fill_in "Entrega fecha 2", with: @poas_asigna.entrega_fecha_2
    fill_in "Entrega fecha 3", with: @poas_asigna.entrega_fecha_3
    fill_in "Entrega fecha 4", with: @poas_asigna.entrega_fecha_4
    fill_in "Entrega fecha 5", with: @poas_asigna.entrega_fecha_5
    fill_in "Fuente", with: @poas_asigna.fuente_id
    fill_in "Iva", with: @poas_asigna.iva
    fill_in "Marca", with: @poas_asigna.marca
    fill_in "Poas", with: @poas_asigna.poas_id
    fill_in "Precio", with: @poas_asigna.precio
    fill_in "Presentacion", with: @poas_asigna.presentacion
    fill_in "Proceso", with: @poas_asigna.proceso_id
    fill_in "Proveedor", with: @poas_asigna.proveedor
    fill_in "Proveedor", with: @poas_asigna.proveedor_id
    fill_in "Sacp anio", with: @poas_asigna.sacp_anio
    fill_in "Sacp anio pago", with: @poas_asigna.sacp_anio_pago
    fill_in "Sacp esq", with: @poas_asigna.sacp_esq
    fill_in "Sacp interno", with: @poas_asigna.sacp_interno
    fill_in "Sacp interno pago", with: @poas_asigna.sacp_interno_pago
    fill_in "Sacp requisi", with: @poas_asigna.sacp_requisi
    fill_in "Sacp requisi pago", with: @poas_asigna.sacp_requisi_pago
    fill_in "Sino", with: @poas_asigna.sino
    click_on "Update Poas asigna"

    assert_text "Poas asigna was successfully updated"
    click_on "Back"
  end

  test "destroying a Poas asigna" do
    visit poas_asignas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poas asigna was successfully destroyed"
  end
end
