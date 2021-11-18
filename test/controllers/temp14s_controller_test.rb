require "test_helper"

class Temp14sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp14 = temp14s(:one)
  end

  test "should get index" do
    get temp14s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp14_url
    assert_response :success
  end

  test "should create temp14" do
    assert_difference('Temp14.count') do
      post temp14s_url, params: { temp14: { accion2011: @temp14.accion2011, actividad: @temp14.actividad, almacen_id: @temp14.almacen_id, anexo: @temp14.anexo, cantidad: @temp14.cantidad, catalogo_id: @temp14.catalogo_id, clave: @temp14.clave, clue_id: @temp14.clue_id, cp_id: @temp14.cp_id, cveprog: @temp14.cveprog, descripcion: @temp14.descripcion, detped_id: @temp14.detped_id, empates: @temp14.empates, entrega: @temp14.entrega, fiscal: @temp14.fiscal, fuente: @temp14.fuente, fuente_id: @temp14.fuente_id, importe: @temp14.importe, marca: @temp14.marca, partida: @temp14.partida, partida_id: @temp14.partida_id, ped_id: @temp14.ped_id, precio: @temp14.precio, presentacion: @temp14.presentacion, proceso: @temp14.proceso, proceso_id: @temp14.proceso_id, programa: @temp14.programa, programa_id: @temp14.programa_id, prov_id: @temp14.prov_id, renglon: @temp14.renglon, renglon_id: @temp14.renglon_id, requisicion_id: @temp14.requisicion_id, sinonimo: @temp14.sinonimo, subprog2011: @temp14.subprog2011, unidad: @temp14.unidad } }
    end

    assert_redirected_to temp14_url(Temp14.last)
  end

  test "should show temp14" do
    get temp14_url(@temp14)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp14_url(@temp14)
    assert_response :success
  end

  test "should update temp14" do
    patch temp14_url(@temp14), params: { temp14: { accion2011: @temp14.accion2011, actividad: @temp14.actividad, almacen_id: @temp14.almacen_id, anexo: @temp14.anexo, cantidad: @temp14.cantidad, catalogo_id: @temp14.catalogo_id, clave: @temp14.clave, clue_id: @temp14.clue_id, cp_id: @temp14.cp_id, cveprog: @temp14.cveprog, descripcion: @temp14.descripcion, detped_id: @temp14.detped_id, empates: @temp14.empates, entrega: @temp14.entrega, fiscal: @temp14.fiscal, fuente: @temp14.fuente, fuente_id: @temp14.fuente_id, importe: @temp14.importe, marca: @temp14.marca, partida: @temp14.partida, partida_id: @temp14.partida_id, ped_id: @temp14.ped_id, precio: @temp14.precio, presentacion: @temp14.presentacion, proceso: @temp14.proceso, proceso_id: @temp14.proceso_id, programa: @temp14.programa, programa_id: @temp14.programa_id, prov_id: @temp14.prov_id, renglon: @temp14.renglon, renglon_id: @temp14.renglon_id, requisicion_id: @temp14.requisicion_id, sinonimo: @temp14.sinonimo, subprog2011: @temp14.subprog2011, unidad: @temp14.unidad } }
    assert_redirected_to temp14_url(@temp14)
  end

  test "should destroy temp14" do
    assert_difference('Temp14.count', -1) do
      delete temp14_url(@temp14)
    end

    assert_redirected_to temp14s_url
  end
end
