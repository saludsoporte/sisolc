require "test_helper"

class Temp6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp6 = temp6s(:one)
  end

  test "should get index" do
    get temp6s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp6_url
    assert_response :success
  end

  test "should create temp6" do
    assert_difference('Temp6.count') do
      post temp6s_url, params: { temp6: { ciudad: @temp6.ciudad, colonia: @temp6.colonia, cp: @temp6.cp, cvealma_id: @temp6.cvealma_id, domicilio: @temp6.domicilio, fax: @temp6.fax, fiscal: @temp6.fiscal, nombre: @temp6.nombre, rfc: @temp6.rfc, telefonos: @temp6.telefonos } }
    end

    assert_redirected_to temp6_url(Temp6.last)
  end

  test "should show temp6" do
    get temp6_url(@temp6)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp6_url(@temp6)
    assert_response :success
  end

  test "should update temp6" do
    patch temp6_url(@temp6), params: { temp6: { ciudad: @temp6.ciudad, colonia: @temp6.colonia, cp: @temp6.cp, cvealma_id: @temp6.cvealma_id, domicilio: @temp6.domicilio, fax: @temp6.fax, fiscal: @temp6.fiscal, nombre: @temp6.nombre, rfc: @temp6.rfc, telefonos: @temp6.telefonos } }
    assert_redirected_to temp6_url(@temp6)
  end

  test "should destroy temp6" do
    assert_difference('Temp6.count', -1) do
      delete temp6_url(@temp6)
    end

    assert_redirected_to temp6s_url
  end
end
