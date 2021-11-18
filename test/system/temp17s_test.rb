require "application_system_test_case"

class Temp17sTest < ApplicationSystemTestCase
  setup do
    @temp17 = temp17s(:one)
  end

  test "visiting the index" do
    visit temp17s_url
    assert_selector "h1", text: "Temp17s"
  end

  test "creating a Temp17" do
    visit temp17s_url
    click_on "New Temp17"

    fill_in "Catalogo", with: @temp17.catalogo_id
    fill_in "Nuevoped", with: @temp17.nuevoped
    fill_in "Ped", with: @temp17.ped_id
    click_on "Create Temp17"

    assert_text "Temp17 was successfully created"
    click_on "Back"
  end

  test "updating a Temp17" do
    visit temp17s_url
    click_on "Edit", match: :first

    fill_in "Catalogo", with: @temp17.catalogo_id
    fill_in "Nuevoped", with: @temp17.nuevoped
    fill_in "Ped", with: @temp17.ped_id
    click_on "Update Temp17"

    assert_text "Temp17 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp17" do
    visit temp17s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp17 was successfully destroyed"
  end
end
