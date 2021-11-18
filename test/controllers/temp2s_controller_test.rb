require "test_helper"

class Temp2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp2 = temp2s(:one)
  end

  test "should get index" do
    get temp2s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp2_url
    assert_response :success
  end

  test "should create temp2" do
    assert_difference('Temp2.count') do
      post temp2s_url, params: { temp2: { articulo: @temp2.articulo, cantidad: @temp2.cantidad, costo: @temp2.costo, cveaccion: @temp2.cveaccion, cveart: @temp2.cveart, cvejur: @temp2.cvejur, cveprog: @temp2.cveprog, cvesubprog: @temp2.cvesubprog, cveunidad: @temp2.cveunidad, descripcion: @temp2.descripcion, ff: @temp2.ff, fuente: @temp2.fuente, nom_prog: @temp2.nom_prog, nomaccion: @temp2.nomaccion, nomsubprog: @temp2.nomsubprog, nup: @temp2.nup, obra: @temp2.obra, observaciones: @temp2.observaciones, partest: @temp2.partest, partida: @temp2.partida, presentacion: @temp2.presentacion, progabrev: @temp2.progabrev, programa: @temp2.programa, rubro: @temp2.rubro, sinonimo: @temp2.sinonimo, subprograma: @temp2.subprograma, unidad: @temp2.unidad, uniresp: @temp2.uniresp } }
    end

    assert_redirected_to temp2_url(Temp2.last)
  end

  test "should show temp2" do
    get temp2_url(@temp2)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp2_url(@temp2)
    assert_response :success
  end

  test "should update temp2" do
    patch temp2_url(@temp2), params: { temp2: { articulo: @temp2.articulo, cantidad: @temp2.cantidad, costo: @temp2.costo, cveaccion: @temp2.cveaccion, cveart: @temp2.cveart, cvejur: @temp2.cvejur, cveprog: @temp2.cveprog, cvesubprog: @temp2.cvesubprog, cveunidad: @temp2.cveunidad, descripcion: @temp2.descripcion, ff: @temp2.ff, fuente: @temp2.fuente, nom_prog: @temp2.nom_prog, nomaccion: @temp2.nomaccion, nomsubprog: @temp2.nomsubprog, nup: @temp2.nup, obra: @temp2.obra, observaciones: @temp2.observaciones, partest: @temp2.partest, partida: @temp2.partida, presentacion: @temp2.presentacion, progabrev: @temp2.progabrev, programa: @temp2.programa, rubro: @temp2.rubro, sinonimo: @temp2.sinonimo, subprograma: @temp2.subprograma, unidad: @temp2.unidad, uniresp: @temp2.uniresp } }
    assert_redirected_to temp2_url(@temp2)
  end

  test "should destroy temp2" do
    assert_difference('Temp2.count', -1) do
      delete temp2_url(@temp2)
    end

    assert_redirected_to temp2s_url
  end
end
