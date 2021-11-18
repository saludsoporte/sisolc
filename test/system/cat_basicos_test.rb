require "application_system_test_case"

class CatBasicosTest < ApplicationSystemTestCase
  setup do
    @cat_basico = cat_basicos(:one)
  end

  test "visiting the index" do
    visit cat_basicos_url
    assert_selector "h1", text: "Cat Basicos"
  end

  test "creating a Cat basico" do
    visit cat_basicos_url
    click_on "New Cat Basico"

    fill_in "Clave", with: @cat_basico.clave
    fill_in "Descripcion", with: @cat_basico.descripcion
    check "Es causes" if @cat_basico.es_causes
    fill_in "Precio", with: @cat_basico.precio
    fill_in "Presentacion", with: @cat_basico.presentacion
    click_on "Create Cat basico"

    assert_text "Cat basico was successfully created"
    click_on "Back"
  end

  test "updating a Cat basico" do
    visit cat_basicos_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @cat_basico.clave
    fill_in "Descripcion", with: @cat_basico.descripcion
    check "Es causes" if @cat_basico.es_causes
    fill_in "Precio", with: @cat_basico.precio
    fill_in "Presentacion", with: @cat_basico.presentacion
    click_on "Update Cat basico"

    assert_text "Cat basico was successfully updated"
    click_on "Back"
  end

  test "destroying a Cat basico" do
    visit cat_basicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cat basico was successfully destroyed"
  end
end
