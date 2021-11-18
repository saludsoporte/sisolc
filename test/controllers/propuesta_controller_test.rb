require "test_helper"

class PropuestaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propuestum = propuesta(:one)
  end

  test "should get index" do
    get propuesta_url
    assert_response :success
  end

  test "should get new" do
    get new_propuestum_url
    assert_response :success
  end

  test "should create propuestum" do
    assert_difference('Propuestum.count') do
      post propuesta_url, params: { propuestum: { anexo: @propuestum.anexo, cantidad: @propuestum.cantidad, catalogo_id: @propuestum.catalogo_id, iva: @propuestum.iva, partida_id: @propuestum.partida_id, precio: @propuestum.precio, proceso_id: @propuestum.proceso_id, provee_id: @propuestum.provee_id, reng_id: @propuestum.reng_id } }
    end

    assert_redirected_to propuestum_url(Propuestum.last)
  end

  test "should show propuestum" do
    get propuestum_url(@propuestum)
    assert_response :success
  end

  test "should get edit" do
    get edit_propuestum_url(@propuestum)
    assert_response :success
  end

  test "should update propuestum" do
    patch propuestum_url(@propuestum), params: { propuestum: { anexo: @propuestum.anexo, cantidad: @propuestum.cantidad, catalogo_id: @propuestum.catalogo_id, iva: @propuestum.iva, partida_id: @propuestum.partida_id, precio: @propuestum.precio, proceso_id: @propuestum.proceso_id, provee_id: @propuestum.provee_id, reng_id: @propuestum.reng_id } }
    assert_redirected_to propuestum_url(@propuestum)
  end

  test "should destroy propuestum" do
    assert_difference('Propuestum.count', -1) do
      delete propuestum_url(@propuestum)
    end

    assert_redirected_to propuesta_url
  end
end
