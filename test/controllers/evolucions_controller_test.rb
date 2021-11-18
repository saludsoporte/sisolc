require "test_helper"

class EvolucionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evolucion = evolucions(:one)
  end

  test "should get index" do
    get evolucions_url
    assert_response :success
  end

  test "should get new" do
    get new_evolucion_url
    assert_response :success
  end

  test "should create evolucion" do
    assert_difference('Evolucion.count') do
      post evolucions_url, params: { evolucion: { atencion_id: @evolucion.atencion_id, condiciones: @evolucion.condiciones, diagnosticos: @evolucion.diagnosticos, fc: @evolucion.fc, fecha: @evolucion.fecha, fechaeg: @evolucion.fechaeg, fr: @evolucion.fr, paciente_id: @evolucion.paciente_id, pendientes: @evolucion.pendientes, pronostico: @evolucion.pronostico, ta: @evolucion.ta, temp: @evolucion.temp, tipo_id: @evolucion.tipo_id, user_id: @evolucion.user_id } }
    end

    assert_redirected_to evolucion_url(Evolucion.last)
  end

  test "should show evolucion" do
    get evolucion_url(@evolucion)
    assert_response :success
  end

  test "should get edit" do
    get edit_evolucion_url(@evolucion)
    assert_response :success
  end

  test "should update evolucion" do
    patch evolucion_url(@evolucion), params: { evolucion: { atencion_id: @evolucion.atencion_id, condiciones: @evolucion.condiciones, diagnosticos: @evolucion.diagnosticos, fc: @evolucion.fc, fecha: @evolucion.fecha, fechaeg: @evolucion.fechaeg, fr: @evolucion.fr, paciente_id: @evolucion.paciente_id, pendientes: @evolucion.pendientes, pronostico: @evolucion.pronostico, ta: @evolucion.ta, temp: @evolucion.temp, tipo_id: @evolucion.tipo_id, user_id: @evolucion.user_id } }
    assert_redirected_to evolucion_url(@evolucion)
  end

  test "should destroy evolucion" do
    assert_difference('Evolucion.count', -1) do
      delete evolucion_url(@evolucion)
    end

    assert_redirected_to evolucions_url
  end
end
