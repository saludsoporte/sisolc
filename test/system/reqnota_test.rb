require "application_system_test_case"

class ReqnotaTest < ApplicationSystemTestCase
  setup do
    @reqnotum = reqnota(:one)
  end

  test "visiting the index" do
    visit reqnota_url
    assert_selector "h1", text: "Reqnota"
  end

  test "creating a Reqnotum" do
    visit reqnota_url
    click_on "New Reqnotum"

    fill_in "Comenta", with: @reqnotum.comenta
    fill_in "Fecha", with: @reqnotum.fecha
    fill_in "Requisicion", with: @reqnotum.requisicion_id
    fill_in "User", with: @reqnotum.user_id
    click_on "Create Reqnotum"

    assert_text "Reqnotum was successfully created"
    click_on "Back"
  end

  test "updating a Reqnotum" do
    visit reqnota_url
    click_on "Edit", match: :first

    fill_in "Comenta", with: @reqnotum.comenta
    fill_in "Fecha", with: @reqnotum.fecha
    fill_in "Requisicion", with: @reqnotum.requisicion_id
    fill_in "User", with: @reqnotum.user_id
    click_on "Update Reqnotum"

    assert_text "Reqnotum was successfully updated"
    click_on "Back"
  end

  test "destroying a Reqnotum" do
    visit reqnota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reqnotum was successfully destroyed"
  end
end
