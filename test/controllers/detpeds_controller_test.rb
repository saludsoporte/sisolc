require "test_helper"

class DetpedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detped = detpeds(:one)
  end

  test "should get index" do
    get detpeds_url
    assert_response :success
  end

  test "should get new" do
    get new_detped_url
    assert_response :success
  end

  test "should create detped" do
    assert_difference('Detped.count') do
      post detpeds_url, params: { detped: { caducidad: @detped.caducidad, cancelado: @detped.cancelado, cantidad: @detped.cantidad, clave_id: @detped.clave_id, descripcion: @detped.descripcion, estado_id: @detped.estado_id, importe: @detped.importe, iva: @detped.iva, marca_mod: @detped.marca_mod, ped_id: @detped.ped_id, precio: @detped.precio, presentacion: @detped.presentacion, recibido: @detped.recibido, renglon_id: @detped.renglon_id, requisicion_id: @detped.requisicion_id, total: @detped.total } }
    end

    assert_redirected_to detped_url(Detped.last)
  end

  test "should show detped" do
    get detped_url(@detped)
    assert_response :success
  end

  test "should get edit" do
    get edit_detped_url(@detped)
    assert_response :success
  end

  test "should update detped" do
    patch detped_url(@detped), params: { detped: { caducidad: @detped.caducidad, cancelado: @detped.cancelado, cantidad: @detped.cantidad, clave_id: @detped.clave_id, descripcion: @detped.descripcion, estado_id: @detped.estado_id, importe: @detped.importe, iva: @detped.iva, marca_mod: @detped.marca_mod, ped_id: @detped.ped_id, precio: @detped.precio, presentacion: @detped.presentacion, recibido: @detped.recibido, renglon_id: @detped.renglon_id, requisicion_id: @detped.requisicion_id, total: @detped.total } }
    assert_redirected_to detped_url(@detped)
  end

  test "should destroy detped" do
    assert_difference('Detped.count', -1) do
      delete detped_url(@detped)
    end

    assert_redirected_to detpeds_url
  end
end
