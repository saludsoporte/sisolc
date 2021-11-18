require "test_helper"

class Temp8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp8 = temp8s(:one)
  end

  test "should get index" do
    get temp8s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp8_url
    assert_response :success
  end

  test "should create temp8" do
    assert_difference('Temp8.count') do
      post temp8s_url, params: { temp8: { almacen_id: @temp8.almacen_id, anexos: @temp8.anexos, caducidad: @temp8.caducidad, cantidad: @temp8.cantidad, capacitacion: @temp8.capacitacion, clave_id: @temp8.clave_id, clues_id: @temp8.clues_id, descripcion: @temp8.descripcion, entregas: @temp8.entregas, marca_mod: @temp8.marca_mod, muestra: @temp8.muestra, notas: @temp8.notas, partida_id: @temp8.partida_id, ped_id: @temp8.ped_id, precio: @temp8.precio, presentacion: @temp8.presentacion, proceso_id: @temp8.proceso_id, renglon_id: @temp8.renglon_id, requisicion_id: @temp8.requisicion_id, solicitud_id: @temp8.solicitud_id, user_id: @temp8.user_id } }
    end

    assert_redirected_to temp8_url(Temp8.last)
  end

  test "should show temp8" do
    get temp8_url(@temp8)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp8_url(@temp8)
    assert_response :success
  end

  test "should update temp8" do
    patch temp8_url(@temp8), params: { temp8: { almacen_id: @temp8.almacen_id, anexos: @temp8.anexos, caducidad: @temp8.caducidad, cantidad: @temp8.cantidad, capacitacion: @temp8.capacitacion, clave_id: @temp8.clave_id, clues_id: @temp8.clues_id, descripcion: @temp8.descripcion, entregas: @temp8.entregas, marca_mod: @temp8.marca_mod, muestra: @temp8.muestra, notas: @temp8.notas, partida_id: @temp8.partida_id, ped_id: @temp8.ped_id, precio: @temp8.precio, presentacion: @temp8.presentacion, proceso_id: @temp8.proceso_id, renglon_id: @temp8.renglon_id, requisicion_id: @temp8.requisicion_id, solicitud_id: @temp8.solicitud_id, user_id: @temp8.user_id } }
    assert_redirected_to temp8_url(@temp8)
  end

  test "should destroy temp8" do
    assert_difference('Temp8.count', -1) do
      delete temp8_url(@temp8)
    end

    assert_redirected_to temp8s_url
  end
end
