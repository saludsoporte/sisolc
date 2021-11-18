require "test_helper"

class Temp1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temp1 = temp1s(:one)
  end

  test "should get index" do
    get temp1s_url
    assert_response :success
  end

  test "should get new" do
    get new_temp1_url
    assert_response :success
  end

  test "should create temp1" do
    assert_difference('Temp1.count') do
      post temp1s_url, params: { temp1: { cantidad: @temp1.cantidad, descripcio: @temp1.descripcio, ejercicio: @temp1.ejercicio, fiscal: @temp1.fiscal, idarticulo: @temp1.idarticulo, idpedido: @temp1.idpedido, marca: @temp1.marca, nombrefuen: @temp1.nombrefuen, nombreunid: @temp1.nombreunid, partida: @temp1.partida, preciounit: @temp1.preciounit, presentaci: @temp1.presentaci, requisicio: @temp1.requisicio } }
    end

    assert_redirected_to temp1_url(Temp1.last)
  end

  test "should show temp1" do
    get temp1_url(@temp1)
    assert_response :success
  end

  test "should get edit" do
    get edit_temp1_url(@temp1)
    assert_response :success
  end

  test "should update temp1" do
    patch temp1_url(@temp1), params: { temp1: { cantidad: @temp1.cantidad, descripcio: @temp1.descripcio, ejercicio: @temp1.ejercicio, fiscal: @temp1.fiscal, idarticulo: @temp1.idarticulo, idpedido: @temp1.idpedido, marca: @temp1.marca, nombrefuen: @temp1.nombrefuen, nombreunid: @temp1.nombreunid, partida: @temp1.partida, preciounit: @temp1.preciounit, presentaci: @temp1.presentaci, requisicio: @temp1.requisicio } }
    assert_redirected_to temp1_url(@temp1)
  end

  test "should destroy temp1" do
    assert_difference('Temp1.count', -1) do
      delete temp1_url(@temp1)
    end

    assert_redirected_to temp1s_url
  end
end
