require "application_system_test_case"

class PacnotaTest < ApplicationSystemTestCase
  setup do
    @pacnotum = pacnota(:one)
  end

  test "visiting the index" do
    visit pacnota_url
    assert_selector "h1", text: "Pacnota"
  end

  test "creating a Pacnotum" do
    visit pacnota_url
    click_on "New Pacnotum"

    fill_in "Comenta", with: @pacnotum.comenta
    fill_in "Fecha", with: @pacnotum.fecha
    fill_in "Paciente", with: @pacnotum.paciente_id
    fill_in "User", with: @pacnotum.user_id
    click_on "Create Pacnotum"

    assert_text "Pacnotum was successfully created"
    click_on "Back"
  end

  test "updating a Pacnotum" do
    visit pacnota_url
    click_on "Edit", match: :first

    fill_in "Comenta", with: @pacnotum.comenta
    fill_in "Fecha", with: @pacnotum.fecha
    fill_in "Paciente", with: @pacnotum.paciente_id
    fill_in "User", with: @pacnotum.user_id
    click_on "Update Pacnotum"

    assert_text "Pacnotum was successfully updated"
    click_on "Back"
  end

  test "destroying a Pacnotum" do
    visit pacnota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pacnotum was successfully destroyed"
  end
end
