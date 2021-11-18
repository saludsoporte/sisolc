require "test_helper"

class CatCabmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_cabm = cat_cabms(:one)
  end

  test "should get index" do
    get cat_cabms_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_cabm_url
    assert_response :success
  end

  test "should create cat_cabm" do
    assert_difference('CatCabm.count') do
      post cat_cabms_url, params: { cat_cabm: { descripcion: @cat_cabm.descripcion, nivel: @cat_cabm.nivel, partida: @cat_cabm.partida } }
    end

    assert_redirected_to cat_cabm_url(CatCabm.last)
  end

  test "should show cat_cabm" do
    get cat_cabm_url(@cat_cabm)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_cabm_url(@cat_cabm)
    assert_response :success
  end

  test "should update cat_cabm" do
    patch cat_cabm_url(@cat_cabm), params: { cat_cabm: { descripcion: @cat_cabm.descripcion, nivel: @cat_cabm.nivel, partida: @cat_cabm.partida } }
    assert_redirected_to cat_cabm_url(@cat_cabm)
  end

  test "should destroy cat_cabm" do
    assert_difference('CatCabm.count', -1) do
      delete cat_cabm_url(@cat_cabm)
    end

    assert_redirected_to cat_cabms_url
  end
end
