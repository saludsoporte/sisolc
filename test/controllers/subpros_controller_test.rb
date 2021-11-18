require "test_helper"

class SubprosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subpro = subpros(:one)
  end

  test "should get index" do
    get subpros_url
    assert_response :success
  end

  test "should get new" do
    get new_subpro_url
    assert_response :success
  end

  test "should create subpro" do
    assert_difference('Subpro.count') do
      post subpros_url, params: { subpro: { clave: @subpro.clave, programa: @subpro.programa, programa_id: @subpro.programa_id } }
    end

    assert_redirected_to subpro_url(Subpro.last)
  end

  test "should show subpro" do
    get subpro_url(@subpro)
    assert_response :success
  end

  test "should get edit" do
    get edit_subpro_url(@subpro)
    assert_response :success
  end

  test "should update subpro" do
    patch subpro_url(@subpro), params: { subpro: { clave: @subpro.clave, programa: @subpro.programa, programa_id: @subpro.programa_id } }
    assert_redirected_to subpro_url(@subpro)
  end

  test "should destroy subpro" do
    assert_difference('Subpro.count', -1) do
      delete subpro_url(@subpro)
    end

    assert_redirected_to subpros_url
  end
end
