require "test_helper"

class Temp11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp11 = temp11s(:one)
  end

  test "should get index" do
    get temp11s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp11_url
    assert_response :success
  end

  test "should create temp11" do
    assert_difference('Temp11.count') do
      post temp11s_url, params: { temp11: { accion2011: @temp11.accion2011, actividad: @temp11.actividad, almacen_id: @temp11.almacen_id, anexo: @temp11.anexo, cantidad: @temp11.cantidad, catalogo_id: @temp11.catalogo_id, clave: @temp11.clave, clue_id: @temp11.clue_id, cp_id: @temp11.cp_id, cveprog: @temp11.cveprog, descripcion: @temp11.descripcion, detped_id: @temp11.detped_id, empates: @temp11.empates, entrega: @temp11.entrega, etiqueta: @temp11.etiqueta, fiscal: @temp11.fiscal, fuente: @temp11.fuente, fuente_id: @temp11.fuente_id, importe: @temp11.importe, marca: @temp11.marca, partida: @temp11.partida, partida_id: @temp11.partida_id, ped_id: @temp11.ped_id, precio: @temp11.precio, presentacion: @temp11.presentacion, proceso: @temp11.proceso, proceso_id: @temp11.proceso_id, programa: @temp11.programa, programa_id: @temp11.programa_id, prov_id: @temp11.prov_id, renglon: @temp11.renglon, renglon_id: @temp11.renglon_id, requisicion_id: @temp11.requisicion_id, sinonimo: @temp11.sinonimo, subprog2011: @temp11.subprog2011, unidad: @temp11.unidad } }
    end

    assert_redirected_to temp11_url(Temp11.last)
  end

  test "should show temp11" do
    get temp11_url(@temp11)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp11_url(@temp11)
    assert_response :success
  end

  test "should update temp11" do
    patch temp11_url(@temp11), params: { temp11: { accion2011: @temp11.accion2011, actividad: @temp11.actividad, almacen_id: @temp11.almacen_id, anexo: @temp11.anexo, cantidad: @temp11.cantidad, catalogo_id: @temp11.catalogo_id, clave: @temp11.clave, clue_id: @temp11.clue_id, cp_id: @temp11.cp_id, cveprog: @temp11.cveprog, descripcion: @temp11.descripcion, detped_id: @temp11.detped_id, empates: @temp11.empates, entrega: @temp11.entrega, etiqueta: @temp11.etiqueta, fiscal: @temp11.fiscal, fuente: @temp11.fuente, fuente_id: @temp11.fuente_id, importe: @temp11.importe, marca: @temp11.marca, partida: @temp11.partida, partida_id: @temp11.partida_id, ped_id: @temp11.ped_id, precio: @temp11.precio, presentacion: @temp11.presentacion, proceso: @temp11.proceso, proceso_id: @temp11.proceso_id, programa: @temp11.programa, programa_id: @temp11.programa_id, prov_id: @temp11.prov_id, renglon: @temp11.renglon, renglon_id: @temp11.renglon_id, requisicion_id: @temp11.requisicion_id, sinonimo: @temp11.sinonimo, subprog2011: @temp11.subprog2011, unidad: @temp11.unidad } }
    assert_redirected_to temp11_url(@temp11)
  end

  test "should destroy temp11" do
    assert_difference('Temp11.count', -1) do
      delete temp11_url(@temp11)
    end

    assert_redirected_to temp11s_url
  end
end
