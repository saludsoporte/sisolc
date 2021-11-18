require "test_helper"

class PacienteIdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente_id = paciente_ids(:one)
  end

  test "should get index" do
    get paciente_ids_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_id_url
    assert_response :success
  end

  test "should create paciente_id" do
    assert_difference('PacienteId.count') do
      post paciente_ids_url, params: { paciente_id: { afiliacion: @paciente_id.afiliacion, institu_id: @paciente_id.institu_id } }
    end

    assert_redirected_to paciente_id_url(PacienteId.last)
  end

  test "should show paciente_id" do
    get paciente_id_url(@paciente_id)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_id_url(@paciente_id)
    assert_response :success
  end

  test "should update paciente_id" do
    patch paciente_id_url(@paciente_id), params: { paciente_id: { afiliacion: @paciente_id.afiliacion, institu_id: @paciente_id.institu_id } }
    assert_redirected_to paciente_id_url(@paciente_id)
  end

  test "should destroy paciente_id" do
    assert_difference('PacienteId.count', -1) do
      delete paciente_id_url(@paciente_id)
    end

    assert_redirected_to paciente_ids_url
  end
end
