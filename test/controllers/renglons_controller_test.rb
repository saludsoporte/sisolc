require "test_helper"

class RenglonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renglon = renglons(:one)
  end

  test "should get index" do
    get renglons_url
    assert_response :success
  end

  test "should get new" do
    get new_renglon_url
    assert_response :success
  end

  test "should create renglon" do
    assert_difference('Renglon.count') do
      post renglons_url, params: { renglon: { cant_detpeds: @renglon.cant_detpeds, clues_id: @renglon.clues_id, descripcion: @renglon.descripcion, ejercicio: @renglon.ejercicio, etiqueta_id: @renglon.etiqueta_id, importe: @renglon.importe, partida_id: @renglon.partida_id, programa_id: @renglon.programa_id, proyecto_id: @renglon.proyecto_id, renglon: @renglon.renglon, requisicion_id: @renglon.requisicion_id } }
    end

    assert_redirected_to renglon_url(Renglon.last)
  end

  test "should show renglon" do
    get renglon_url(@renglon)
    assert_response :success
  end

  test "should get edit" do
    get edit_renglon_url(@renglon)
    assert_response :success
  end

  test "should update renglon" do
    patch renglon_url(@renglon), params: { renglon: { cant_detpeds: @renglon.cant_detpeds, clues_id: @renglon.clues_id, descripcion: @renglon.descripcion, ejercicio: @renglon.ejercicio, etiqueta_id: @renglon.etiqueta_id, importe: @renglon.importe, partida_id: @renglon.partida_id, programa_id: @renglon.programa_id, proyecto_id: @renglon.proyecto_id, renglon: @renglon.renglon, requisicion_id: @renglon.requisicion_id } }
    assert_redirected_to renglon_url(@renglon)
  end

  test "should destroy renglon" do
    assert_difference('Renglon.count', -1) do
      delete renglon_url(@renglon)
    end

    assert_redirected_to renglons_url
  end
end
