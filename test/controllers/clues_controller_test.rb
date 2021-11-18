require "test_helper"

class CluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clue = clues(:one)
  end

  test "should get index" do
    get clues_url
    assert_response :success
  end

  test "should get new" do
    get new_clue_url
    assert_response :success
  end

  test "should create clue" do
    assert_difference('Clue.count') do
      post clues_url, params: { clue: { clues: @clue.clues, cp: @clue.cp, cveloc: @clue.cveloc, cvemuni: @clue.cvemuni, domicilio: @clue.domicilio, estructura_id: @clue.estructura_id, juris_id: @clue.juris_id, localidad: @clue.localidad, municipio: @clue.municipio, nomabrev: @clue.nomabrev, nomunidad: @clue.nomunidad, tipounidad: @clue.tipounidad } }
    end

    assert_redirected_to clue_url(Clue.last)
  end

  test "should show clue" do
    get clue_url(@clue)
    assert_response :success
  end

  test "should get edit" do
    get edit_clue_url(@clue)
    assert_response :success
  end

  test "should update clue" do
    patch clue_url(@clue), params: { clue: { clues: @clue.clues, cp: @clue.cp, cveloc: @clue.cveloc, cvemuni: @clue.cvemuni, domicilio: @clue.domicilio, estructura_id: @clue.estructura_id, juris_id: @clue.juris_id, localidad: @clue.localidad, municipio: @clue.municipio, nomabrev: @clue.nomabrev, nomunidad: @clue.nomunidad, tipounidad: @clue.tipounidad } }
    assert_redirected_to clue_url(@clue)
  end

  test "should destroy clue" do
    assert_difference('Clue.count', -1) do
      delete clue_url(@clue)
    end

    assert_redirected_to clues_url
  end
end
