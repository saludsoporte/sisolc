require "test_helper"

class Temp15sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp15 = temp15s(:one)
  end

  test "should get index" do
    get temp15s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp15_url
    assert_response :success
  end

  test "should create temp15" do
    assert_difference('Temp15.count') do
      post temp15s_url, params: { temp15: { accion2011: @temp15.accion2011, actividad: @temp15.actividad, almacen_id: @temp15.almacen_id, anexo: @temp15.anexo, cantidad: @temp15.cantidad, catalogo_id: @temp15.catalogo_id, clave: @temp15.clave, clue_id: @temp15.clue_id, cp_id: @temp15.cp_id, cveprog: @temp15.cveprog, descripcion: @temp15.descripcion, detped_id: @temp15.detped_id, empates: @temp15.empates, entrega: @temp15.entrega, etiqueta: @temp15.etiqueta, fiscal: @temp15.fiscal, fuente: @temp15.fuente, fuente_id: @temp15.fuente_id, importe: @temp15.importe, marca: @temp15.marca, partida: @temp15.partida, partida_id: @temp15.partida_id, ped_id: @temp15.ped_id, precio: @temp15.precio, presentacion: @temp15.presentacion, proceso: @temp15.proceso, proceso_id: @temp15.proceso_id, programa: @temp15.programa, programa_id: @temp15.programa_id, prov_id: @temp15.prov_id, renglon: @temp15.renglon, renglon_id: @temp15.renglon_id, requisicion_id: @temp15.requisicion_id, sinonimo: @temp15.sinonimo, subprog2011: @temp15.subprog2011, unidad: @temp15.unidad } }
    end

    assert_redirected_to temp15_url(Temp15.last)
  end

  test "should show temp15" do
    get temp15_url(@temp15)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp15_url(@temp15)
    assert_response :success
  end

  test "should update temp15" do
    patch temp15_url(@temp15), params: { temp15: { accion2011: @temp15.accion2011, actividad: @temp15.actividad, almacen_id: @temp15.almacen_id, anexo: @temp15.anexo, cantidad: @temp15.cantidad, catalogo_id: @temp15.catalogo_id, clave: @temp15.clave, clue_id: @temp15.clue_id, cp_id: @temp15.cp_id, cveprog: @temp15.cveprog, descripcion: @temp15.descripcion, detped_id: @temp15.detped_id, empates: @temp15.empates, entrega: @temp15.entrega, etiqueta: @temp15.etiqueta, fiscal: @temp15.fiscal, fuente: @temp15.fuente, fuente_id: @temp15.fuente_id, importe: @temp15.importe, marca: @temp15.marca, partida: @temp15.partida, partida_id: @temp15.partida_id, ped_id: @temp15.ped_id, precio: @temp15.precio, presentacion: @temp15.presentacion, proceso: @temp15.proceso, proceso_id: @temp15.proceso_id, programa: @temp15.programa, programa_id: @temp15.programa_id, prov_id: @temp15.prov_id, renglon: @temp15.renglon, renglon_id: @temp15.renglon_id, requisicion_id: @temp15.requisicion_id, sinonimo: @temp15.sinonimo, subprog2011: @temp15.subprog2011, unidad: @temp15.unidad } }
    assert_redirected_to temp15_url(@temp15)
  end

  test "should destroy temp15" do
    assert_difference('Temp15.count', -1) do
      delete temp15_url(@temp15)
    end

    assert_redirected_to temp15s_url
  end
end
