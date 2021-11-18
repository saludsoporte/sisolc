require "test_helper"

class Temp10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp10 = temp10s(:one)
  end

  test "should get index" do
    get temp10s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp10_url
    assert_response :success
  end

  test "should create temp10" do
    assert_difference('Temp10.count') do
      post temp10s_url, params: { temp10: { cantidad: @temp10.cantidad, descripcio: @temp10.descripcio, ejercicio: @temp10.ejercicio, fiscal: @temp10.fiscal, idarticulo: @temp10.idarticulo, idpedido: @temp10.idpedido, marca: @temp10.marca, nombrefuen: @temp10.nombrefuen, nombreunid: @temp10.nombreunid, partida: @temp10.partida, preciounit: @temp10.preciounit, presentaci: @temp10.presentaci, requisicio: @temp10.requisicio } }
    end

    assert_redirected_to temp10_url(Temp10.last)
  end

  test "should show temp10" do
    get temp10_url(@temp10)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp10_url(@temp10)
    assert_response :success
  end

  test "should update temp10" do
    patch temp10_url(@temp10), params: { temp10: { cantidad: @temp10.cantidad, descripcio: @temp10.descripcio, ejercicio: @temp10.ejercicio, fiscal: @temp10.fiscal, idarticulo: @temp10.idarticulo, idpedido: @temp10.idpedido, marca: @temp10.marca, nombrefuen: @temp10.nombrefuen, nombreunid: @temp10.nombreunid, partida: @temp10.partida, preciounit: @temp10.preciounit, presentaci: @temp10.presentaci, requisicio: @temp10.requisicio } }
    assert_redirected_to temp10_url(@temp10)
  end

  test "should destroy temp10" do
    assert_difference('Temp10.count', -1) do
      delete temp10_url(@temp10)
    end

    assert_redirected_to temp10s_url
  end
end
