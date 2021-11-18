require "test_helper"

class ReqnotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reqnotum = reqnota(:one)
  end

  test "should get index" do
    get reqnota_url
    assert_response :success
  end

  test "should get new" do
    get new_reqnotum_url
    assert_response :success
  end

  test "should create reqnotum" do
    assert_difference('Reqnotum.count') do
      post reqnota_url, params: { reqnotum: { comenta: @reqnotum.comenta, fecha: @reqnotum.fecha, requisicion_id: @reqnotum.requisicion_id, user_id: @reqnotum.user_id } }
    end

    assert_redirected_to reqnotum_url(Reqnotum.last)
  end

  test "should show reqnotum" do
    get reqnotum_url(@reqnotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_reqnotum_url(@reqnotum)
    assert_response :success
  end

  test "should update reqnotum" do
    patch reqnotum_url(@reqnotum), params: { reqnotum: { comenta: @reqnotum.comenta, fecha: @reqnotum.fecha, requisicion_id: @reqnotum.requisicion_id, user_id: @reqnotum.user_id } }
    assert_redirected_to reqnotum_url(@reqnotum)
  end

  test "should destroy reqnotum" do
    assert_difference('Reqnotum.count', -1) do
      delete reqnotum_url(@reqnotum)
    end

    assert_redirected_to reqnota_url
  end
end
