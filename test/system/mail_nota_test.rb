require "application_system_test_case"

class MailNotaTest < ApplicationSystemTestCase
  setup do
    @mail_notum = mail_nota(:one)
  end

  test "visiting the index" do
    visit mail_nota_url
    assert_selector "h1", text: "Mail Nota"
  end

  test "creating a Mail notum" do
    visit mail_nota_url
    click_on "New Mail Notum"

    fill_in "Correo", with: @mail_notum.correo
    fill_in "Fase", with: @mail_notum.fase
    fill_in "Fecha", with: @mail_notum.fecha
    fill_in "Id nota", with: @mail_notum.id_nota
    fill_in "Nombre", with: @mail_notum.nombre
    click_on "Create Mail notum"

    assert_text "Mail notum was successfully created"
    click_on "Back"
  end

  test "updating a Mail notum" do
    visit mail_nota_url
    click_on "Edit", match: :first

    fill_in "Correo", with: @mail_notum.correo
    fill_in "Fase", with: @mail_notum.fase
    fill_in "Fecha", with: @mail_notum.fecha
    fill_in "Id nota", with: @mail_notum.id_nota
    fill_in "Nombre", with: @mail_notum.nombre
    click_on "Update Mail notum"

    assert_text "Mail notum was successfully updated"
    click_on "Back"
  end

  test "destroying a Mail notum" do
    visit mail_nota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mail notum was successfully destroyed"
  end
end
