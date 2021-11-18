require "test_helper"

class CatBasicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_basico = cat_basicos(:one)
  end

  test "should get index" do
    get cat_basicos_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_basico_url
    assert_response :success
  end

  test "should create cat_basico" do
    assert_difference('CatBasico.count') do
      post cat_basicos_url, params: { cat_basico: { clave: @cat_basico.clave, descripcion: @cat_basico.descripcion, es_causes: @cat_basico.es_causes, precio: @cat_basico.precio, presentacion: @cat_basico.presentacion } }
    end

    assert_redirected_to cat_basico_url(CatBasico.last)
  end

  test "should show cat_basico" do
    get cat_basico_url(@cat_basico)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_basico_url(@cat_basico)
    assert_response :success
  end

  test "should update cat_basico" do
    patch cat_basico_url(@cat_basico), params: { cat_basico: { clave: @cat_basico.clave, descripcion: @cat_basico.descripcion, es_causes: @cat_basico.es_causes, precio: @cat_basico.precio, presentacion: @cat_basico.presentacion } }
    assert_redirected_to cat_basico_url(@cat_basico)
  end

  test "should destroy cat_basico" do
    assert_difference('CatBasico.count', -1) do
      delete cat_basico_url(@cat_basico)
    end

    assert_redirected_to cat_basicos_url
  end
end
