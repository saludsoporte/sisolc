require "test_helper"

class DomiciliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @domicilio = domicilios(:one)
  end

  test "should get index" do
    get domicilios_url
    assert_response :success
  end

  test "should get new" do
    get new_domicilio_url
    assert_response :success
  end

  test "should create domicilio" do
    assert_difference('Domicilio.count') do
      post domicilios_url, params: { domicilio: { calle: @domicilio.calle, colonia: @domicilio.colonia, cp: @domicilio.cp, entidad_id: @domicilio.entidad_id, muni_id: @domicilio.muni_id, municipio: @domicilio.municipio, numero: @domicilio.numero, observa: @domicilio.observa, paciente_id: @domicilio.paciente_id, telefono: @domicilio.telefono, user_id: @domicilio.user_id } }
    end

    assert_redirected_to domicilio_url(Domicilio.last)
  end

  test "should show domicilio" do
    get domicilio_url(@domicilio)
    assert_response :success
  end

  test "should get edit" do
    get edit_domicilio_url(@domicilio)
    assert_response :success
  end

  test "should update domicilio" do
    patch domicilio_url(@domicilio), params: { domicilio: { calle: @domicilio.calle, colonia: @domicilio.colonia, cp: @domicilio.cp, entidad_id: @domicilio.entidad_id, muni_id: @domicilio.muni_id, municipio: @domicilio.municipio, numero: @domicilio.numero, observa: @domicilio.observa, paciente_id: @domicilio.paciente_id, telefono: @domicilio.telefono, user_id: @domicilio.user_id } }
    assert_redirected_to domicilio_url(@domicilio)
  end

  test "should destroy domicilio" do
    assert_difference('Domicilio.count', -1) do
      delete domicilio_url(@domicilio)
    end

    assert_redirected_to domicilios_url
  end
end
