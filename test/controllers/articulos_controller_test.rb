require "test_helper"

class ArticulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo = articulos(:one)
  end

  test "should get index" do
    get articulos_url
    assert_response :success
  end

  test "should get new" do
    get new_articulo_url
    assert_response :success
  end

  test "should create articulo" do
    assert_difference('Articulo.count') do
      post articulos_url, params: { articulo: { adquirido: @articulo.adquirido, almacen_id: @articulo.almacen_id, anexos: @articulo.anexos, caducidad: @articulo.caducidad, cancelado: @articulo.cancelado, cantidad: @articulo.cantidad, capacitacion: @articulo.capacitacion, catalogo_id: @articulo.catalogo_id, clave_id: @articulo.clave_id, clues_id: @articulo.clues_id, comprar: @articulo.comprar, descripcion: @articulo.descripcion, entregas: @articulo.entregas, marca_mod: @articulo.marca_mod, muestra: @articulo.muestra, notas: @articulo.notas, partida_id: @articulo.partida_id, ped_id: @articulo.ped_id, precio: @articulo.precio, presentacion: @articulo.presentacion, proceso_id: @articulo.proceso_id, renglon_id: @articulo.renglon_id, requisicion_id: @articulo.requisicion_id, solicitud_id: @articulo.solicitud_id, user_id: @articulo.user_id } }
    end

    assert_redirected_to articulo_url(Articulo.last)
  end

  test "should show articulo" do
    get articulo_url(@articulo)
    assert_response :success
  end

  test "should get edit" do
    get edit_articulo_url(@articulo)
    assert_response :success
  end

  test "should update articulo" do
    patch articulo_url(@articulo), params: { articulo: { adquirido: @articulo.adquirido, almacen_id: @articulo.almacen_id, anexos: @articulo.anexos, caducidad: @articulo.caducidad, cancelado: @articulo.cancelado, cantidad: @articulo.cantidad, capacitacion: @articulo.capacitacion, catalogo_id: @articulo.catalogo_id, clave_id: @articulo.clave_id, clues_id: @articulo.clues_id, comprar: @articulo.comprar, descripcion: @articulo.descripcion, entregas: @articulo.entregas, marca_mod: @articulo.marca_mod, muestra: @articulo.muestra, notas: @articulo.notas, partida_id: @articulo.partida_id, ped_id: @articulo.ped_id, precio: @articulo.precio, presentacion: @articulo.presentacion, proceso_id: @articulo.proceso_id, renglon_id: @articulo.renglon_id, requisicion_id: @articulo.requisicion_id, solicitud_id: @articulo.solicitud_id, user_id: @articulo.user_id } }
    assert_redirected_to articulo_url(@articulo)
  end

  test "should destroy articulo" do
    assert_difference('Articulo.count', -1) do
      delete articulo_url(@articulo)
    end

    assert_redirected_to articulos_url
  end
end
