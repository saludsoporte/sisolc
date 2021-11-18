require "test_helper"

class NacidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nacido = nacidos(:one)
  end

  test "should get index" do
    get nacidos_url
    assert_response :success
  end

  test "should get new" do
    get new_nacido_url
    assert_response :success
  end

  test "should create nacido" do
    assert_difference('Nacido.count') do
      post nacidos_url, params: { nacido: { atencion: @nacido.atencion, atencion_id: @nacido.atencion_id, defuncion: @nacido.defuncion, egreso: @nacido.egreso, evolucion: @nacido.evolucion, paciente_id: @nacido.paciente_id, user_id: @nacido.user_id } }
    end

    assert_redirected_to nacido_url(Nacido.last)
  end

  test "should show nacido" do
    get nacido_url(@nacido)
    assert_response :success
  end

  test "should get edit" do
    get edit_nacido_url(@nacido)
    assert_response :success
  end

  test "should update nacido" do
    patch nacido_url(@nacido), params: { nacido: { atencion: @nacido.atencion, atencion_id: @nacido.atencion_id, defuncion: @nacido.defuncion, egreso: @nacido.egreso, evolucion: @nacido.evolucion, paciente_id: @nacido.paciente_id, user_id: @nacido.user_id } }
    assert_redirected_to nacido_url(@nacido)
  end

  test "should destroy nacido" do
    assert_difference('Nacido.count', -1) do
      delete nacido_url(@nacido)
    end

    assert_redirected_to nacidos_url
  end
end
