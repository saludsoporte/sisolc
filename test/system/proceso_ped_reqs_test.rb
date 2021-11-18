require "application_system_test_case"

class ProcesoPedReqsTest < ApplicationSystemTestCase
  setup do
    @proceso_ped_req = proceso_ped_reqs(:one)
  end

  test "visiting the index" do
    visit proceso_ped_reqs_url
    assert_selector "h1", text: "Proceso Ped Reqs"
  end

  test "creating a Proceso ped req" do
    visit proceso_ped_reqs_url
    click_on "New Proceso Ped Req"

    fill_in "Cantidad", with: @proceso_ped_req.cantidad
    fill_in "Clave", with: @proceso_ped_req.clave_id
    fill_in "Detpeds", with: @proceso_ped_req.detpeds_id
    check "Empate" if @proceso_ped_req.empate
    fill_in "Entrega", with: @proceso_ped_req.entrega
    fill_in "Fecha", with: @proceso_ped_req.fecha
    fill_in "Poas", with: @proceso_ped_req.poas_id
    fill_in "Proceso", with: @proceso_ped_req.proceso_id
    fill_in "Req sacp", with: @proceso_ped_req.req_sacp
    fill_in "Req sacp interno", with: @proceso_ped_req.req_sacp_interno
    click_on "Create Proceso ped req"

    assert_text "Proceso ped req was successfully created"
    click_on "Back"
  end

  test "updating a Proceso ped req" do
    visit proceso_ped_reqs_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @proceso_ped_req.cantidad
    fill_in "Clave", with: @proceso_ped_req.clave_id
    fill_in "Detpeds", with: @proceso_ped_req.detpeds_id
    check "Empate" if @proceso_ped_req.empate
    fill_in "Entrega", with: @proceso_ped_req.entrega
    fill_in "Fecha", with: @proceso_ped_req.fecha
    fill_in "Poas", with: @proceso_ped_req.poas_id
    fill_in "Proceso", with: @proceso_ped_req.proceso_id
    fill_in "Req sacp", with: @proceso_ped_req.req_sacp
    fill_in "Req sacp interno", with: @proceso_ped_req.req_sacp_interno
    click_on "Update Proceso ped req"

    assert_text "Proceso ped req was successfully updated"
    click_on "Back"
  end

  test "destroying a Proceso ped req" do
    visit proceso_ped_reqs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proceso ped req was successfully destroyed"
  end
end
