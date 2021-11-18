require "test_helper"

class ReordensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reorden = reordens(:one)
  end

  test "should get index" do
    get reordens_url
    assert_response :success
  end

  test "should get new" do
    get new_reorden_url
    assert_response :success
  end

  test "should create reorden" do
    assert_difference('Reorden.count') do
      post reordens_url, params: { reorden: { almacen_id: @reorden.almacen_id, catalogo_id: @reorden.catalogo_id, estado_id: @reorden.estado_id, existencia: @reorden.existencia, nombre: @reorden.nombre, notifica_id: @reorden.notifica_id, partida_id: @reorden.partida_id, punto: @reorden.punto, tipo_id: @reorden.tipo_id, user_id: @reorden.user_id, vigenciaf: @reorden.vigenciaf, vigenciai: @reorden.vigenciai } }
    end

    assert_redirected_to reorden_url(Reorden.last)
  end

  test "should show reorden" do
    get reorden_url(@reorden)
    assert_response :success
  end

  test "should get edit" do
    get edit_reorden_url(@reorden)
    assert_response :success
  end

  test "should update reorden" do
    patch reorden_url(@reorden), params: { reorden: { almacen_id: @reorden.almacen_id, catalogo_id: @reorden.catalogo_id, estado_id: @reorden.estado_id, existencia: @reorden.existencia, nombre: @reorden.nombre, notifica_id: @reorden.notifica_id, partida_id: @reorden.partida_id, punto: @reorden.punto, tipo_id: @reorden.tipo_id, user_id: @reorden.user_id, vigenciaf: @reorden.vigenciaf, vigenciai: @reorden.vigenciai } }
    assert_redirected_to reorden_url(@reorden)
  end

  test "should destroy reorden" do
    assert_difference('Reorden.count', -1) do
      delete reorden_url(@reorden)
    end

    assert_redirected_to reordens_url
  end
end
