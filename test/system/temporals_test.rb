require "application_system_test_case"

class TemporalsTest < ApplicationSystemTestCase
  setup do
    @temporal = temporals(:one)
  end

  test "visiting the index" do
    visit temporals_url
    assert_selector "h1", text: "Temporals"
  end

  test "creating a Temporal" do
    visit temporals_url
    click_on "New Temporal"

    fill_in "C1", with: @temporal.c1
    fill_in "C10", with: @temporal.c10
    fill_in "C11", with: @temporal.c11
    fill_in "C12", with: @temporal.c12
    fill_in "C13", with: @temporal.c13
    fill_in "C14", with: @temporal.c14
    fill_in "C15", with: @temporal.c15
    fill_in "C16", with: @temporal.c16
    fill_in "C17", with: @temporal.c17
    fill_in "C18", with: @temporal.c18
    fill_in "C19", with: @temporal.c19
    fill_in "C2", with: @temporal.c2
    fill_in "C20", with: @temporal.c20
    fill_in "C21", with: @temporal.c21
    fill_in "C22", with: @temporal.c22
    fill_in "C23", with: @temporal.c23
    fill_in "C24", with: @temporal.c24
    fill_in "C25", with: @temporal.c25
    fill_in "C26", with: @temporal.c26
    fill_in "C27", with: @temporal.c27
    fill_in "C28", with: @temporal.c28
    fill_in "C29", with: @temporal.c29
    fill_in "C3", with: @temporal.c3
    fill_in "C30", with: @temporal.c30
    fill_in "C31", with: @temporal.c31
    fill_in "C32", with: @temporal.c32
    fill_in "C33", with: @temporal.c33
    fill_in "C34", with: @temporal.c34
    fill_in "C35", with: @temporal.c35
    fill_in "C36", with: @temporal.c36
    fill_in "C37", with: @temporal.c37
    fill_in "C38", with: @temporal.c38
    fill_in "C39", with: @temporal.c39
    fill_in "C4", with: @temporal.c4
    fill_in "C40", with: @temporal.c40
    fill_in "C5", with: @temporal.c5
    fill_in "C6", with: @temporal.c6
    fill_in "C7", with: @temporal.c7
    fill_in "C8", with: @temporal.c8
    fill_in "C9", with: @temporal.c9
    click_on "Create Temporal"

    assert_text "Temporal was successfully created"
    click_on "Back"
  end

  test "updating a Temporal" do
    visit temporals_url
    click_on "Edit", match: :first

    fill_in "C1", with: @temporal.c1
    fill_in "C10", with: @temporal.c10
    fill_in "C11", with: @temporal.c11
    fill_in "C12", with: @temporal.c12
    fill_in "C13", with: @temporal.c13
    fill_in "C14", with: @temporal.c14
    fill_in "C15", with: @temporal.c15
    fill_in "C16", with: @temporal.c16
    fill_in "C17", with: @temporal.c17
    fill_in "C18", with: @temporal.c18
    fill_in "C19", with: @temporal.c19
    fill_in "C2", with: @temporal.c2
    fill_in "C20", with: @temporal.c20
    fill_in "C21", with: @temporal.c21
    fill_in "C22", with: @temporal.c22
    fill_in "C23", with: @temporal.c23
    fill_in "C24", with: @temporal.c24
    fill_in "C25", with: @temporal.c25
    fill_in "C26", with: @temporal.c26
    fill_in "C27", with: @temporal.c27
    fill_in "C28", with: @temporal.c28
    fill_in "C29", with: @temporal.c29
    fill_in "C3", with: @temporal.c3
    fill_in "C30", with: @temporal.c30
    fill_in "C31", with: @temporal.c31
    fill_in "C32", with: @temporal.c32
    fill_in "C33", with: @temporal.c33
    fill_in "C34", with: @temporal.c34
    fill_in "C35", with: @temporal.c35
    fill_in "C36", with: @temporal.c36
    fill_in "C37", with: @temporal.c37
    fill_in "C38", with: @temporal.c38
    fill_in "C39", with: @temporal.c39
    fill_in "C4", with: @temporal.c4
    fill_in "C40", with: @temporal.c40
    fill_in "C5", with: @temporal.c5
    fill_in "C6", with: @temporal.c6
    fill_in "C7", with: @temporal.c7
    fill_in "C8", with: @temporal.c8
    fill_in "C9", with: @temporal.c9
    click_on "Update Temporal"

    assert_text "Temporal was successfully updated"
    click_on "Back"
  end

  test "destroying a Temporal" do
    visit temporals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temporal was successfully destroyed"
  end
end
