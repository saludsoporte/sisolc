require "test_helper"

class ProvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prov = provs(:one)
  end

  test "should get index" do
    get provs_url
    assert_response :success
  end

  test "should get new" do
    get new_prov_url
    assert_response :success
  end

  test "should create prov" do
    assert_difference('Prov.count') do
      post provs_url, params: { prov: { ciudad: @prov.ciudad, colonia: @prov.colonia, cp: @prov.cp, cvealma_id: @prov.cvealma_id, domicilio: @prov.domicilio, fax: @prov.fax, fiscal: @prov.fiscal, nombre: @prov.nombre, rfc: @prov.rfc, situacion_id: @prov.situacion_id, telefonos: @prov.telefonos } }
    end

    assert_redirected_to prov_url(Prov.last)
  end

  test "should show prov" do
    get prov_url(@prov)
    assert_response :success
  end

  test "should get edit" do
    get edit_prov_url(@prov)
    assert_response :success
  end

  test "should update prov" do
    patch prov_url(@prov), params: { prov: { ciudad: @prov.ciudad, colonia: @prov.colonia, cp: @prov.cp, cvealma_id: @prov.cvealma_id, domicilio: @prov.domicilio, fax: @prov.fax, fiscal: @prov.fiscal, nombre: @prov.nombre, rfc: @prov.rfc, situacion_id: @prov.situacion_id, telefonos: @prov.telefonos } }
    assert_redirected_to prov_url(@prov)
  end

  test "should destroy prov" do
    assert_difference('Prov.count', -1) do
      delete prov_url(@prov)
    end

    assert_redirected_to provs_url
  end
end
