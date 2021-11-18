require "application_system_test_case"

class SolnotaTest < ApplicationSystemTestCase
  setup do
    @solnotum = solnota(:one)
  end

  test "visiting the index" do
    visit solnota_url
    assert_selector "h1", text: "Solnota"
  end

  test "creating a Solnotum" do
    visit solnota_url
    click_on "New Solnotum"

    fill_in "Comenta", with: @solnotum.comenta
    fill_in "Fecha", with: @solnotum.fecha
    fill_in "Solicitud", with: @solnotum.solicitud_id
    fill_in "User", with: @solnotum.user_id
    click_on "Create Solnotum"

    assert_text "Solnotum was successfully created"
    click_on "Back"
  end

  test "updating a Solnotum" do
    visit solnota_url
    click_on "Edit", match: :first

    fill_in "Comenta", with: @solnotum.comenta
    fill_in "Fecha", with: @solnotum.fecha
    fill_in "Solicitud", with: @solnotum.solicitud_id
    fill_in "User", with: @solnotum.user_id
    click_on "Update Solnotum"

    assert_text "Solnotum was successfully updated"
    click_on "Back"
  end

  test "destroying a Solnotum" do
    visit solnota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solnotum was successfully destroyed"
  end
end
