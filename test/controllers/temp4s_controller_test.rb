require "test_helper"

class Temp4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp4 = temp4s(:one)
  end

  test "should get index" do
    get temp4s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp4_url
    assert_response :success
  end

  test "should create temp4" do
    assert_difference('Temp4.count') do
      post temp4s_url, params: { temp4: { caducidad: @temp4.caducidad, cancelado: @temp4.cancelado, cantidad: @temp4.cantidad, clave_id: @temp4.clave_id, descripcion: @temp4.descripcion, estado_id: @temp4.estado_id, importe: @temp4.importe, iva: @temp4.iva, marca_mod: @temp4.marca_mod, ped_id: @temp4.ped_id, precio: @temp4.precio, presentacion: @temp4.presentacion, recibido: @temp4.recibido, renglon_id: @temp4.renglon_id, requisicion_id: @temp4.requisicion_id, total: @temp4.total } }
    end

    assert_redirected_to temp4_url(Temp4.last)
  end

  test "should show temp4" do
    get temp4_url(@temp4)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp4_url(@temp4)
    assert_response :success
  end

  test "should update temp4" do
    patch temp4_url(@temp4), params: { temp4: { caducidad: @temp4.caducidad, cancelado: @temp4.cancelado, cantidad: @temp4.cantidad, clave_id: @temp4.clave_id, descripcion: @temp4.descripcion, estado_id: @temp4.estado_id, importe: @temp4.importe, iva: @temp4.iva, marca_mod: @temp4.marca_mod, ped_id: @temp4.ped_id, precio: @temp4.precio, presentacion: @temp4.presentacion, recibido: @temp4.recibido, renglon_id: @temp4.renglon_id, requisicion_id: @temp4.requisicion_id, total: @temp4.total } }
    assert_redirected_to temp4_url(@temp4)
  end

  test "should destroy temp4" do
    assert_difference('Temp4.count', -1) do
      delete temp4_url(@temp4)
    end

    assert_redirected_to temp4s_url
  end
end
