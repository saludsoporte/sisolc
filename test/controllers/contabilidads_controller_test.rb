require "test_helper"

class ContabilidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contabilidad = contabilidads(:one)
  end

  test "should get index" do
    get contabilidads_url
    assert_response :success
  end

  test "should get new" do
    get new_contabilidad_url
    assert_response :success
  end

  test "should create contabilidad" do
    assert_difference('Contabilidad.count') do
      post contabilidads_url, params: { contabilidad: { almacen_id: @contabilidad.almacen_id, cuenta: @contabilidad.cuenta, fuente_id: @contabilidad.fuente_id, partida_id: @contabilidad.partida_id, programa_id: @contabilidad.programa_id, prov_id: @contabilidad.prov_id, proyecto_id: @contabilidad.proyecto_id, sistema_id: @contabilidad.sistema_id, tipo_id: @contabilidad.tipo_id, user_id: @contabilidad.user_id } }
    end

    assert_redirected_to contabilidad_url(Contabilidad.last)
  end

  test "should show contabilidad" do
    get contabilidad_url(@contabilidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_contabilidad_url(@contabilidad)
    assert_response :success
  end

  test "should update contabilidad" do
    patch contabilidad_url(@contabilidad), params: { contabilidad: { almacen_id: @contabilidad.almacen_id, cuenta: @contabilidad.cuenta, fuente_id: @contabilidad.fuente_id, partida_id: @contabilidad.partida_id, programa_id: @contabilidad.programa_id, prov_id: @contabilidad.prov_id, proyecto_id: @contabilidad.proyecto_id, sistema_id: @contabilidad.sistema_id, tipo_id: @contabilidad.tipo_id, user_id: @contabilidad.user_id } }
    assert_redirected_to contabilidad_url(@contabilidad)
  end

  test "should destroy contabilidad" do
    assert_difference('Contabilidad.count', -1) do
      delete contabilidad_url(@contabilidad)
    end

    assert_redirected_to contabilidads_url
  end
end
