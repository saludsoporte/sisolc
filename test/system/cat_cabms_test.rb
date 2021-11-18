require "application_system_test_case"

class CatCabmsTest < ApplicationSystemTestCase
  setup do
    @cat_cabm = cat_cabms(:one)
  end

  test "visiting the index" do
    visit cat_cabms_url
    assert_selector "h1", text: "Cat Cabms"
  end

  test "creating a Cat cabm" do
    visit cat_cabms_url
    click_on "New Cat Cabm"

    fill_in "Descripcion", with: @cat_cabm.descripcion
    fill_in "Nivel", with: @cat_cabm.nivel
    fill_in "Partida", with: @cat_cabm.partida
    click_on "Create Cat cabm"

    assert_text "Cat cabm was successfully created"
    click_on "Back"
  end

  test "updating a Cat cabm" do
    visit cat_cabms_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @cat_cabm.descripcion
    fill_in "Nivel", with: @cat_cabm.nivel
    fill_in "Partida", with: @cat_cabm.partida
    click_on "Update Cat cabm"

    assert_text "Cat cabm was successfully updated"
    click_on "Back"
  end

  test "destroying a Cat cabm" do
    visit cat_cabms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cat cabm was successfully destroyed"
  end
end
