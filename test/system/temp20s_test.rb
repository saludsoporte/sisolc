require "application_system_test_case"

class Temp20sTest < ApplicationSystemTestCase
  setup do
    @temp20 = temp20s(:one)
  end

  test "visiting the index" do
    visit temp20s_url
    assert_selector "h1", text: "Temp20s"
  end

  test "creating a Temp20" do
    visit temp20s_url
    click_on "New Temp20"

    check "Anexos" if @temp20.anexos
    fill_in "Autoriza", with: @temp20.autoriza_id
    fill_in "Clues", with: @temp20.clues_id
    fill_in "Estado", with: @temp20.estado_id
    fill_in "Etiqueta", with: @temp20.etiqueta
    fill_in "Fecha", with: @temp20.fecha
    fill_in "Fuente", with: @temp20.fuente_id
    fill_in "Id", with: @temp20.id
    fill_in "Importe", with: @temp20.importe
    fill_in "User", with: @temp20.user_id
    fill_in "Vobo", with: @temp20.vobo_id
    click_on "Create Temp20"

    assert_text "Temp20 was successfully created"
    click_on "Back"
  end

  test "updating a Temp20" do
    visit temp20s_url
    click_on "Edit", match: :first

    check "Anexos" if @temp20.anexos
    fill_in "Autoriza", with: @temp20.autoriza_id
    fill_in "Clues", with: @temp20.clues_id
    fill_in "Estado", with: @temp20.estado_id
    fill_in "Etiqueta", with: @temp20.etiqueta
    fill_in "Fecha", with: @temp20.fecha
    fill_in "Fuente", with: @temp20.fuente_id
    fill_in "Id", with: @temp20.id
    fill_in "Importe", with: @temp20.importe
    fill_in "User", with: @temp20.user_id
    fill_in "Vobo", with: @temp20.vobo_id
    click_on "Update Temp20"

    assert_text "Temp20 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp20" do
    visit temp20s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp20 was successfully destroyed"
  end
end
