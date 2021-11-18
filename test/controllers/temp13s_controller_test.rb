require "test_helper"

class Temp13sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp13 = temp13s(:one)
  end

  test "should get index" do
    get temp13s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp13_url
    assert_response :success
  end

  test "should create temp13" do
    assert_difference('Temp13.count') do
      post temp13s_url, params: { temp13: { accion2011: @temp13.accion2011, actividad: @temp13.actividad, almacen_id: @temp13.almacen_id, anexo: @temp13.anexo, cantidad: @temp13.cantidad, catalogo_id: @temp13.catalogo_id, clave: @temp13.clave, clue_id: @temp13.clue_id, cp_id: @temp13.cp_id, cveprog: @temp13.cveprog, descripcion: @temp13.descripcion, detped_id: @temp13.detped_id, empates: @temp13.empates, entrega: @temp13.entrega, fiscal: @temp13.fiscal, fuente: @temp13.fuente, fuente_id: @temp13.fuente_id, importe: @temp13.importe, marca: @temp13.marca, partida: @temp13.partida, partida_id: @temp13.partida_id, ped_id: @temp13.ped_id, precio: @temp13.precio, presentacion: @temp13.presentacion, proceso: @temp13.proceso, proceso_id: @temp13.proceso_id, programa: @temp13.programa, programa_id: @temp13.programa_id, prov_id: @temp13.prov_id, renglon: @temp13.renglon, renglon_id: @temp13.renglon_id, requisicion_id: @temp13.requisicion_id, sinonimo: @temp13.sinonimo, subprog2011: @temp13.subprog2011, unidad: @temp13.unidad } }
    end

    assert_redirected_to temp13_url(Temp13.last)
  end

  test "should show temp13" do
    get temp13_url(@temp13)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp13_url(@temp13)
    assert_response :success
  end

  test "should update temp13" do
    patch temp13_url(@temp13), params: { temp13: { accion2011: @temp13.accion2011, actividad: @temp13.actividad, almacen_id: @temp13.almacen_id, anexo: @temp13.anexo, cantidad: @temp13.cantidad, catalogo_id: @temp13.catalogo_id, clave: @temp13.clave, clue_id: @temp13.clue_id, cp_id: @temp13.cp_id, cveprog: @temp13.cveprog, descripcion: @temp13.descripcion, detped_id: @temp13.detped_id, empates: @temp13.empates, entrega: @temp13.entrega, fiscal: @temp13.fiscal, fuente: @temp13.fuente, fuente_id: @temp13.fuente_id, importe: @temp13.importe, marca: @temp13.marca, partida: @temp13.partida, partida_id: @temp13.partida_id, ped_id: @temp13.ped_id, precio: @temp13.precio, presentacion: @temp13.presentacion, proceso: @temp13.proceso, proceso_id: @temp13.proceso_id, programa: @temp13.programa, programa_id: @temp13.programa_id, prov_id: @temp13.prov_id, renglon: @temp13.renglon, renglon_id: @temp13.renglon_id, requisicion_id: @temp13.requisicion_id, sinonimo: @temp13.sinonimo, subprog2011: @temp13.subprog2011, unidad: @temp13.unidad } }
    assert_redirected_to temp13_url(@temp13)
  end

  test "should destroy temp13" do
    assert_difference('Temp13.count', -1) do
      delete temp13_url(@temp13)
    end

    assert_redirected_to temp13s_url
  end
end
