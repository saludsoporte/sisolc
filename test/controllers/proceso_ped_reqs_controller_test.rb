require "test_helper"

class ProcesoPedReqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proceso_ped_req = proceso_ped_reqs(:one)
  end

  test "should get index" do
    get proceso_ped_reqs_url
    assert_response :success
  end

  test "should get new" do
    get new_proceso_ped_req_url
    assert_response :success
  end

  test "should create proceso_ped_req" do
    assert_difference('ProcesoPedReq.count') do
      post proceso_ped_reqs_url, params: { proceso_ped_req: { cantidad: @proceso_ped_req.cantidad, clave_id: @proceso_ped_req.clave_id, detpeds_id: @proceso_ped_req.detpeds_id, empate: @proceso_ped_req.empate, entrega: @proceso_ped_req.entrega, fecha: @proceso_ped_req.fecha, poas_id: @proceso_ped_req.poas_id, proceso_id: @proceso_ped_req.proceso_id, req_sacp: @proceso_ped_req.req_sacp, req_sacp_interno: @proceso_ped_req.req_sacp_interno } }
    end

    assert_redirected_to proceso_ped_req_url(ProcesoPedReq.last)
  end

  test "should show proceso_ped_req" do
    get proceso_ped_req_url(@proceso_ped_req)
    assert_response :success
  end

  test "should get edit" do
    get edit_proceso_ped_req_url(@proceso_ped_req)
    assert_response :success
  end

  test "should update proceso_ped_req" do
    patch proceso_ped_req_url(@proceso_ped_req), params: { proceso_ped_req: { cantidad: @proceso_ped_req.cantidad, clave_id: @proceso_ped_req.clave_id, detpeds_id: @proceso_ped_req.detpeds_id, empate: @proceso_ped_req.empate, entrega: @proceso_ped_req.entrega, fecha: @proceso_ped_req.fecha, poas_id: @proceso_ped_req.poas_id, proceso_id: @proceso_ped_req.proceso_id, req_sacp: @proceso_ped_req.req_sacp, req_sacp_interno: @proceso_ped_req.req_sacp_interno } }
    assert_redirected_to proceso_ped_req_url(@proceso_ped_req)
  end

  test "should destroy proceso_ped_req" do
    assert_difference('ProcesoPedReq.count', -1) do
      delete proceso_ped_req_url(@proceso_ped_req)
    end

    assert_redirected_to proceso_ped_reqs_url
  end
end
