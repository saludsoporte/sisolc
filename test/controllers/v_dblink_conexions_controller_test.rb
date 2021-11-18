require "test_helper"

class VDblinkConexionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v_dblink_conexion = v_dblink_conexions(:one)
  end

  test "should get index" do
    get v_dblink_conexions_url
    assert_response :success
  end

  test "should get new" do
    get new_v_dblink_conexion_url
    assert_response :success
  end

  test "should create v_dblink_conexion" do
    assert_difference('VDblinkConexion.count') do
      post v_dblink_conexions_url, params: { v_dblink_conexion: { conexion_presup: @v_dblink_conexion.conexion_presup, ejercicio: @v_dblink_conexion.ejercicio } }
    end

    assert_redirected_to v_dblink_conexion_url(VDblinkConexion.last)
  end

  test "should show v_dblink_conexion" do
    get v_dblink_conexion_url(@v_dblink_conexion)
    assert_response :success
  end

  test "should get edit" do
    get edit_v_dblink_conexion_url(@v_dblink_conexion)
    assert_response :success
  end

  test "should update v_dblink_conexion" do
    patch v_dblink_conexion_url(@v_dblink_conexion), params: { v_dblink_conexion: { conexion_presup: @v_dblink_conexion.conexion_presup, ejercicio: @v_dblink_conexion.ejercicio } }
    assert_redirected_to v_dblink_conexion_url(@v_dblink_conexion)
  end

  test "should destroy v_dblink_conexion" do
    assert_difference('VDblinkConexion.count', -1) do
      delete v_dblink_conexion_url(@v_dblink_conexion)
    end

    assert_redirected_to v_dblink_conexions_url
  end
end
