require "test_helper"

class PacnotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacnotum = pacnota(:one)
  end

  test "should get index" do
    get pacnota_url
    assert_response :success
  end

  test "should get new" do
    get new_pacnotum_url
    assert_response :success
  end

  test "should create pacnotum" do
    assert_difference('Pacnotum.count') do
      post pacnota_url, params: { pacnotum: { comenta: @pacnotum.comenta, fecha: @pacnotum.fecha, paciente_id: @pacnotum.paciente_id, user_id: @pacnotum.user_id } }
    end

    assert_redirected_to pacnotum_url(Pacnotum.last)
  end

  test "should show pacnotum" do
    get pacnotum_url(@pacnotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacnotum_url(@pacnotum)
    assert_response :success
  end

  test "should update pacnotum" do
    patch pacnotum_url(@pacnotum), params: { pacnotum: { comenta: @pacnotum.comenta, fecha: @pacnotum.fecha, paciente_id: @pacnotum.paciente_id, user_id: @pacnotum.user_id } }
    assert_redirected_to pacnotum_url(@pacnotum)
  end

  test "should destroy pacnotum" do
    assert_difference('Pacnotum.count', -1) do
      delete pacnotum_url(@pacnotum)
    end

    assert_redirected_to pacnota_url
  end
end
