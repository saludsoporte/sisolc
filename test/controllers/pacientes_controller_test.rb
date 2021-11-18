require "test_helper"

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { cambio: @paciente.cambio, curp: @paciente.curp, materno: @paciente.materno, nacimiento: @paciente.nacimiento, nombre: @paciente.nombre, observa: @paciente.observa, paterno: @paciente.paterno, user_id: @paciente.user_id } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { cambio: @paciente.cambio, curp: @paciente.curp, materno: @paciente.materno, nacimiento: @paciente.nacimiento, nombre: @paciente.nombre, observa: @paciente.observa, paterno: @paciente.paterno, user_id: @paciente.user_id } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end
