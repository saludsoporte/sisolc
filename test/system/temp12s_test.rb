require "application_system_test_case"

class Temp12sTest < ApplicationSystemTestCase
  setup do
    @temp12 = temp12s(:one)
  end

  test "visiting the index" do
    visit temp12s_url
    assert_selector "h1", text: "Temp12s"
  end

  test "creating a Temp12" do
    visit temp12s_url
    click_on "New Temp12"

    fill_in "Almacen", with: @temp12.almacen_id
    fill_in "Catalogo", with: @temp12.catalogo_id
    fill_in "Total", with: @temp12.total
    click_on "Create Temp12"

    assert_text "Temp12 was successfully created"
    click_on "Back"
  end

  test "updating a Temp12" do
    visit temp12s_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @temp12.almacen_id
    fill_in "Catalogo", with: @temp12.catalogo_id
    fill_in "Total", with: @temp12.total
    click_on "Update Temp12"

    assert_text "Temp12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Temp12" do
    visit temp12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temp12 was successfully destroyed"
  end
end
