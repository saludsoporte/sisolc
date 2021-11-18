require "application_system_test_case"

class SmpnotaTest < ApplicationSystemTestCase
  setup do
    @smpnotum = smpnota(:one)
  end

  test "visiting the index" do
    visit smpnota_url
    assert_selector "h1", text: "Smpnota"
  end

  test "creating a Smpnotum" do
    visit smpnota_url
    click_on "New Smpnotum"

    fill_in "Comenta", with: @smpnotum.comenta
    fill_in "Destinatario", with: @smpnotum.destinatario_id
    fill_in "Fecha", with: @smpnotum.fecha
    fill_in "Fecharesp", with: @smpnotum.fecharesp
    fill_in "Respuesta", with: @smpnotum.respuesta
    fill_in "User", with: @smpnotum.user_id
    click_on "Create Smpnotum"

    assert_text "Smpnotum was successfully created"
    click_on "Back"
  end

  test "updating a Smpnotum" do
    visit smpnota_url
    click_on "Edit", match: :first

    fill_in "Comenta", with: @smpnotum.comenta
    fill_in "Destinatario", with: @smpnotum.destinatario_id
    fill_in "Fecha", with: @smpnotum.fecha
    fill_in "Fecharesp", with: @smpnotum.fecharesp
    fill_in "Respuesta", with: @smpnotum.respuesta
    fill_in "User", with: @smpnotum.user_id
    click_on "Update Smpnotum"

    assert_text "Smpnotum was successfully updated"
    click_on "Back"
  end

  test "destroying a Smpnotum" do
    visit smpnota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smpnotum was successfully destroyed"
  end
end
