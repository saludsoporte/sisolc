require "test_helper"

class AlmacensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @almacen = almacens(:one)
  end

  test "should get index" do
    get almacens_url
    assert_response :success
  end

  test "should get new" do
    get new_almacen_url
    assert_response :success
  end

  test "should create almacen" do
    assert_difference('Almacen.count') do
      post almacens_url, params: { almacen: { admoru: @almacen.admoru, almac1_id: @almacen.almac1_id, almac2_id: @almacen.almac2_id, almac3_id: @almacen.almac3_id, almac4_id: @almacen.almac4_id, almac5_id: @almacen.almac5_id, almac6_id: @almacen.almac6_id, almac7_id: @almacen.almac7_id, cierre1: @almacen.cierre1, cierre2: @almacen.cierre2, clue_id: @almacen.clue_id, conta1_id: @almacen.conta1_id, conta2_id: @almacen.conta2_id, cp: @almacen.cp, cpostal: @almacen.cpostal, cuenta1: @almacen.cuenta1, cuenta2: @almacen.cuenta2, depende_id: @almacen.depende_id, domicilio: @almacen.domicilio, jefeu: @almacen.jefeu, municipio: @almacen.municipio, nombre: @almacen.nombre, tipo: @almacen.tipo, tipo_id: @almacen.tipo_id, user_id: @almacen.user_id } }
    end

    assert_redirected_to almacen_url(Almacen.last)
  end

  test "should show almacen" do
    get almacen_url(@almacen)
    assert_response :success
  end

  test "should get edit" do
    get edit_almacen_url(@almacen)
    assert_response :success
  end

  test "should update almacen" do
    patch almacen_url(@almacen), params: { almacen: { admoru: @almacen.admoru, almac1_id: @almacen.almac1_id, almac2_id: @almacen.almac2_id, almac3_id: @almacen.almac3_id, almac4_id: @almacen.almac4_id, almac5_id: @almacen.almac5_id, almac6_id: @almacen.almac6_id, almac7_id: @almacen.almac7_id, cierre1: @almacen.cierre1, cierre2: @almacen.cierre2, clue_id: @almacen.clue_id, conta1_id: @almacen.conta1_id, conta2_id: @almacen.conta2_id, cp: @almacen.cp, cpostal: @almacen.cpostal, cuenta1: @almacen.cuenta1, cuenta2: @almacen.cuenta2, depende_id: @almacen.depende_id, domicilio: @almacen.domicilio, jefeu: @almacen.jefeu, municipio: @almacen.municipio, nombre: @almacen.nombre, tipo: @almacen.tipo, tipo_id: @almacen.tipo_id, user_id: @almacen.user_id } }
    assert_redirected_to almacen_url(@almacen)
  end

  test "should destroy almacen" do
    assert_difference('Almacen.count', -1) do
      delete almacen_url(@almacen)
    end

    assert_redirected_to almacens_url
  end
end
