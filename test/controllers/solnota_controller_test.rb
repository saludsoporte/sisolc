require "test_helper"

class SolnotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solnotum = solnota(:one)
  end

  test "should get index" do
    get solnota_url
    assert_response :success
  end

  test "should get new" do
    get new_solnotum_url
    assert_response :success
  end

  test "should create solnotum" do
    assert_difference('Solnotum.count') do
      post solnota_url, params: { solnotum: { comenta: @solnotum.comenta, fecha: @solnotum.fecha, solicitud_id: @solnotum.solicitud_id, user_id: @solnotum.user_id } }
    end

    assert_redirected_to solnotum_url(Solnotum.last)
  end

  test "should show solnotum" do
    get solnotum_url(@solnotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_solnotum_url(@solnotum)
    assert_response :success
  end

  test "should update solnotum" do
    patch solnotum_url(@solnotum), params: { solnotum: { comenta: @solnotum.comenta, fecha: @solnotum.fecha, solicitud_id: @solnotum.solicitud_id, user_id: @solnotum.user_id } }
    assert_redirected_to solnotum_url(@solnotum)
  end

  test "should destroy solnotum" do
    assert_difference('Solnotum.count', -1) do
      delete solnotum_url(@solnotum)
    end

    assert_redirected_to solnota_url
  end
end
