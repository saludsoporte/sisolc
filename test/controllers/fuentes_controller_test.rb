require "test_helper"

class FuentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuente = fuentes(:one)
  end

  test "should get index" do
    get fuentes_url
    assert_response :success
  end

  test "should get new" do
    get new_fuente_url
    assert_response :success
  end

  test "should create fuente" do
    assert_difference('Fuente.count') do
      post fuentes_url, params: { fuente: { clave: @fuente.clave, cuenta: @fuente.cuenta, fuente: @fuente.fuente, periodo: @fuente.periodo } }
    end

    assert_redirected_to fuente_url(Fuente.last)
  end

  test "should show fuente" do
    get fuente_url(@fuente)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuente_url(@fuente)
    assert_response :success
  end

  test "should update fuente" do
    patch fuente_url(@fuente), params: { fuente: { clave: @fuente.clave, cuenta: @fuente.cuenta, fuente: @fuente.fuente, periodo: @fuente.periodo } }
    assert_redirected_to fuente_url(@fuente)
  end

  test "should destroy fuente" do
    assert_difference('Fuente.count', -1) do
      delete fuente_url(@fuente)
    end

    assert_redirected_to fuentes_url
  end
end
