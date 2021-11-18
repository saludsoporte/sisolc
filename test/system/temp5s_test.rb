require "application_system_test_case"

class Temp5sTest < ApplicationSystemTestCase
  setup do
    @temp5 = temp5s(:one)
  end

  test "visiting the index" do
    visit temp5s_url
    assert_selector "h1", text: "Temp5s"
  end

  test "creating a Temp5" do
    visit temp5s_url
    click_on "New Temp5"

    check "Anexos" if @temp5.anexos
    fill_in "Autoriza", with: @temp5.autoriza_id
    fill_in "Clues", with: @temp5.clues_id
    fill_in "Estado", with: @temp5.estado_id
    fill_in "Etiqueta", with: @temp5.etiqueta
    fill_in "Fecha", with: @temp5.fecha
    fill_in "Fuente", with: @temp5.fuente_id
    fill_in "Id", with: @temp5.id
    fill_in "Importe", with: @temp5.importe
    fill_in "User", with: @temp5.user_id
    fill_in "Vobo", with: @temp5.vobo_id
    click_on "Create Temp5"

    assert_text "Temp5 was successfully created"
    click_on "Back"
  end

  test "updating a Temp5" do
    visit temp5s_url
    click_on "Edit", match: :first

    check "Anexos" if @temp5.anexos
    fill_in "Autoriza", with: @temp5.autoriza_id
    fill_in "Clues", with: @temp5.clues_id
    fill_in "Estado", with: @temp5.estado_id
    fill_in "Etiqueta", with: @temp5.etiqueta
    fill_in "Fecha", with: @temp5.fecha
    fill_in "Fuente", with: @temp5.fuente_id
    fill_in "Id", with: @temp5.id
    fill_in "Importe", with: @temp5.importe
    fill_in "User", with: @temp5.user_id
    fill_in "Vobo", with: @temp5.vobo_id
    click_on "Update Temp5"

    assert_text "Temp5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp5" do
    visit temp5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp5 was successfully destroyed"
  end
end
