require "test_helper"

class EntidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entidad = entidads(:one)
  end

  test "should get index" do
    get entidads_url
    assert_response :success
  end

  test "should get new" do
    get new_entidad_url
    assert_response :success
  end

  test "should create entidad" do
    assert_difference('Entidad.count') do
      post entidads_url, params: { entidad: { entidad: @entidad.entidad } }
    end

    assert_redirected_to entidad_url(Entidad.last)
  end

  test "should show entidad" do
    get entidad_url(@entidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_entidad_url(@entidad)
    assert_response :success
  end

  test "should update entidad" do
    patch entidad_url(@entidad), params: { entidad: { entidad: @entidad.entidad } }
    assert_redirected_to entidad_url(@entidad)
  end

  test "should destroy entidad" do
    assert_difference('Entidad.count', -1) do
      delete entidad_url(@entidad)
    end

    assert_redirected_to entidads_url
  end
end
