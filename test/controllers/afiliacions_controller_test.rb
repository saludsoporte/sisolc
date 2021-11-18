require "test_helper"

class AfiliacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @afiliacion = afiliacions(:one)
  end

  test "should get index" do
    get afiliacions_url
    assert_response :success
  end

  test "should get new" do
    get new_afiliacion_url
    assert_response :success
  end

  test "should create afiliacion" do
    assert_difference('Afiliacion.count') do
      post afiliacions_url, params: { afiliacion: { afiliacion: @afiliacion.afiliacion, institu_id: @afiliacion.institu_id, institucion: @afiliacion.institucion, paciente_id: @afiliacion.paciente_id, user_id: @afiliacion.user_id } }
    end

    assert_redirected_to afiliacion_url(Afiliacion.last)
  end

  test "should show afiliacion" do
    get afiliacion_url(@afiliacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_afiliacion_url(@afiliacion)
    assert_response :success
  end

  test "should update afiliacion" do
    patch afiliacion_url(@afiliacion), params: { afiliacion: { afiliacion: @afiliacion.afiliacion, institu_id: @afiliacion.institu_id, institucion: @afiliacion.institucion, paciente_id: @afiliacion.paciente_id, user_id: @afiliacion.user_id } }
    assert_redirected_to afiliacion_url(@afiliacion)
  end

  test "should destroy afiliacion" do
    assert_difference('Afiliacion.count', -1) do
      delete afiliacion_url(@afiliacion)
    end

    assert_redirected_to afiliacions_url
  end
end
