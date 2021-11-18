require "test_helper"

class Temp7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp7 = temp7s(:one)
  end

  test "should get index" do
    get temp7s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp7_url
    assert_response :success
  end

  test "should create temp7" do
    assert_difference('Temp7.count') do
      post temp7s_url, params: { temp7: { clave: @temp7.clave, descripcion: @temp7.descripcion, estado_id: @temp7.estado_id, partida: @temp7.partida, partida_id: @temp7.partida_id, presentacion: @temp7.presentacion } }
    end

    assert_redirected_to temp7_url(Temp7.last)
  end

  test "should show temp7" do
    get temp7_url(@temp7)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp7_url(@temp7)
    assert_response :success
  end

  test "should update temp7" do
    patch temp7_url(@temp7), params: { temp7: { clave: @temp7.clave, descripcion: @temp7.descripcion, estado_id: @temp7.estado_id, partida: @temp7.partida, partida_id: @temp7.partida_id, presentacion: @temp7.presentacion } }
    assert_redirected_to temp7_url(@temp7)
  end

  test "should destroy temp7" do
    assert_difference('Temp7.count', -1) do
      delete temp7_url(@temp7)
    end

    assert_redirected_to temp7s_url
  end
end
