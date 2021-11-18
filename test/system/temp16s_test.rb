require "application_system_test_case"

class Temp16sTest < ApplicationSystemTestCase
  setup do
    @temp16 = temp16s(:one)
  end

  test "visiting the index" do
    visit temp16s_url
    assert_selector "h1", text: "Temp16s"
  end

  test "creating a Temp16" do
    visit temp16s_url
    click_on "New Temp16"

    fill_in "Autoriza", with: @temp16.autoriza_id
    fill_in "Clues", with: @temp16.clues_id
    fill_in "Estado", with: @temp16.estado_id
    fill_in "Fecha", with: @temp16.fecha
    fill_in "Fuente", with: @temp16.fuente_id
    fill_in "User", with: @temp16.user_id
    fill_in "Vobo", with: @temp16.vobo_id
    click_on "Create Temp16"

    assert_text "Temp16 was successfully created"
    click_on "Back"
  end

  test "updating a Temp16" do
    visit temp16s_url
    click_on "Edit", match: :first

    fill_in "Autoriza", with: @temp16.autoriza_id
    fill_in "Clues", with: @temp16.clues_id
    fill_in "Estado", with: @temp16.estado_id
    fill_in "Fecha", with: @temp16.fecha
    fill_in "Fuente", with: @temp16.fuente_id
    fill_in "User", with: @temp16.user_id
    fill_in "Vobo", with: @temp16.vobo_id
    click_on "Update Temp16"

    assert_text "Temp16 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp16" do
    visit temp16s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp16 was successfully destroyed"
  end
end
