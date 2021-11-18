require "test_helper"

class RequisicionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requisicion = requisicions(:one)
  end

  test "should get index" do
    get requisicions_url
    assert_response :success
  end

  test "should get new" do
    get new_requisicion_url
    assert_response :success
  end

  test "should create requisicion" do
    assert_difference('Requisicion.count') do
      post requisicions_url, params: { requisicion: { anexos: @requisicion.anexos, autoriza_id: @requisicion.autoriza_id, clues_id: @requisicion.clues_id, estado_id: @requisicion.estado_id, etiqueta: @requisicion.etiqueta, fecha: @requisicion.fecha, fuente_id: @requisicion.fuente_id, importe: @requisicion.importe, user_id: @requisicion.user_id, vobo_id: @requisicion.vobo_id } }
    end

    assert_redirected_to requisicion_url(Requisicion.last)
  end

  test "should show requisicion" do
    get requisicion_url(@requisicion)
    assert_response :success
  end

  test "should get edit" do
    get edit_requisicion_url(@requisicion)
    assert_response :success
  end

  test "should update requisicion" do
    patch requisicion_url(@requisicion), params: { requisicion: { anexos: @requisicion.anexos, autoriza_id: @requisicion.autoriza_id, clues_id: @requisicion.clues_id, estado_id: @requisicion.estado_id, etiqueta: @requisicion.etiqueta, fecha: @requisicion.fecha, fuente_id: @requisicion.fuente_id, importe: @requisicion.importe, user_id: @requisicion.user_id, vobo_id: @requisicion.vobo_id } }
    assert_redirected_to requisicion_url(@requisicion)
  end

  test "should destroy requisicion" do
    assert_difference('Requisicion.count', -1) do
      delete requisicion_url(@requisicion)
    end

    assert_redirected_to requisicions_url
  end
end
