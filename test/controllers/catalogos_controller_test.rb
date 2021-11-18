require "test_helper"

class CatalogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogo = catalogos(:one)
  end

  test "should get index" do
    get catalogos_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogo_url
    assert_response :success
  end

  test "should create catalogo" do
    assert_difference('Catalogo.count') do
      post catalogos_url, params: { catalogo: { casuses_basico_id: @catalogo.casuses_basico_id, clave: @catalogo.clave, descripcion: @catalogo.descripcion, estado_id: @catalogo.estado_id, existencia: @catalogo.existencia, fecha: @catalogo.fecha, fecha2: @catalogo.fecha2, grupo_id: @catalogo.grupo_id, iva: @catalogo.iva, partida: @catalogo.partida, partida_id: @catalogo.partida_id, precio: @catalogo.precio, precio2: @catalogo.precio2, presentacion: @catalogo.presentacion, proceso: @catalogo.proceso, prog0_id: @catalogo.prog0_id, prog1_id: @catalogo.prog1_id, prog2_id: @catalogo.prog2_id, prog3_id: @catalogo.prog3_id, prog4_id: @catalogo.prog4_id, prog5_id: @catalogo.prog5_id, prog6_id: @catalogo.prog6_id, prog7_id: @catalogo.prog7_id, prog8_id: @catalogo.prog8_id, prog9_id: @catalogo.prog9_id, programa_id: @catalogo.programa_id, tipo_id: @catalogo.tipo_id, unidades: @catalogo.unidades } }
    end

    assert_redirected_to catalogo_url(Catalogo.last)
  end

  test "should show catalogo" do
    get catalogo_url(@catalogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogo_url(@catalogo)
    assert_response :success
  end

  test "should update catalogo" do
    patch catalogo_url(@catalogo), params: { catalogo: { casuses_basico_id: @catalogo.casuses_basico_id, clave: @catalogo.clave, descripcion: @catalogo.descripcion, estado_id: @catalogo.estado_id, existencia: @catalogo.existencia, fecha: @catalogo.fecha, fecha2: @catalogo.fecha2, grupo_id: @catalogo.grupo_id, iva: @catalogo.iva, partida: @catalogo.partida, partida_id: @catalogo.partida_id, precio: @catalogo.precio, precio2: @catalogo.precio2, presentacion: @catalogo.presentacion, proceso: @catalogo.proceso, prog0_id: @catalogo.prog0_id, prog1_id: @catalogo.prog1_id, prog2_id: @catalogo.prog2_id, prog3_id: @catalogo.prog3_id, prog4_id: @catalogo.prog4_id, prog5_id: @catalogo.prog5_id, prog6_id: @catalogo.prog6_id, prog7_id: @catalogo.prog7_id, prog8_id: @catalogo.prog8_id, prog9_id: @catalogo.prog9_id, programa_id: @catalogo.programa_id, tipo_id: @catalogo.tipo_id, unidades: @catalogo.unidades } }
    assert_redirected_to catalogo_url(@catalogo)
  end

  test "should destroy catalogo" do
    assert_difference('Catalogo.count', -1) do
      delete catalogo_url(@catalogo)
    end

    assert_redirected_to catalogos_url
  end
end
