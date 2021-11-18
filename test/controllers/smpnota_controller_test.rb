require "test_helper"

class SmpnotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smpnotum = smpnota(:one)
  end

  test "should get index" do
    get smpnota_url
    assert_response :success
  end

  test "should get new" do
    get new_smpnotum_url
    assert_response :success
  end

  test "should create smpnotum" do
    assert_difference('Smpnotum.count') do
      post smpnota_url, params: { smpnotum: { comenta: @smpnotum.comenta, destinatario_id: @smpnotum.destinatario_id, fecha: @smpnotum.fecha, fecharesp: @smpnotum.fecharesp, respuesta: @smpnotum.respuesta, user_id: @smpnotum.user_id } }
    end

    assert_redirected_to smpnotum_url(Smpnotum.last)
  end

  test "should show smpnotum" do
    get smpnotum_url(@smpnotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_smpnotum_url(@smpnotum)
    assert_response :success
  end

  test "should update smpnotum" do
    patch smpnotum_url(@smpnotum), params: { smpnotum: { comenta: @smpnotum.comenta, destinatario_id: @smpnotum.destinatario_id, fecha: @smpnotum.fecha, fecharesp: @smpnotum.fecharesp, respuesta: @smpnotum.respuesta, user_id: @smpnotum.user_id } }
    assert_redirected_to smpnotum_url(@smpnotum)
  end

  test "should destroy smpnotum" do
    assert_difference('Smpnotum.count', -1) do
      delete smpnotum_url(@smpnotum)
    end

    assert_redirected_to smpnota_url
  end
end
