require "application_system_test_case"

class Temp7sTest < ApplicationSystemTestCase
  setup do
    @temp7 = temp7s(:one)
  end

  test "visiting the index" do
    visit temp7s_url
    assert_selector "h1", text: "Temp7s"
  end

  test "creating a Temp7" do
    visit temp7s_url
    click_on "New Temp7"

    fill_in "Clave", with: @temp7.clave
    fill_in "Descripcion", with: @temp7.descripcion
    fill_in "Estado", with: @temp7.estado_id
    fill_in "Partida", with: @temp7.partida
    fill_in "Partida", with: @temp7.partida_id
    fill_in "Presentacion", with: @temp7.presentacion
    click_on "Create Temp7"

    assert_text "Temp7 was successfully created"
    click_on "Back"
  end

  test "updating a Temp7" do
    visit temp7s_url
    click_on "Edit", match: :first

    fill_in "Clave", with: @temp7.clave
    fill_in "Descripcion", with: @temp7.descripcion
    fill_in "Estado", with: @temp7.estado_id
    fill_in "Partida", with: @temp7.partida
    fill_in "Partida", with: @temp7.partida_id
    fill_in "Presentacion", with: @temp7.presentacion
    click_on "Update Temp7"

    assert_text "Temp7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp7" do
    visit temp7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp7 was successfully destroyed"
  end
end
