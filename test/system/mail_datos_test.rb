require "application_system_test_case"

class MailDatosTest < ApplicationSystemTestCase
  setup do
    @mail_dato = mail_datos(:one)
  end

  test "visiting the index" do
    visit mail_datos_url
    assert_selector "h1", text: "Mail Datos"
  end

  test "creating a Mail dato" do
    visit mail_datos_url
    click_on "New Mail Dato"

    fill_in "Actualizada", with: @mail_dato.actualizada
    fill_in "Comentario", with: @mail_dato.comentario
    fill_in "Creada", with: @mail_dato.creada
    fill_in "Dias", with: @mail_dato.dias
    fill_in "Email", with: @mail_dato.email
    fill_in "Estado", with: @mail_dato.estado
    fill_in "Fase", with: @mail_dato.fase
    fill_in "Fecha", with: @mail_dato.fecha
    fill_in "Id nota", with: @mail_dato.id_nota
    fill_in "Id sol", with: @mail_dato.id_sol
    fill_in "Id usu", with: @mail_dato.id_usu
    fill_in "Nombre", with: @mail_dato.nombre
    click_on "Create Mail dato"

    assert_text "Mail dato was successfully created"
    click_on "Back"
  end

  test "updating a Mail dato" do
    visit mail_datos_url
    click_on "Edit", match: :first

    fill_in "Actualizada", with: @mail_dato.actualizada
    fill_in "Comentario", with: @mail_dato.comentario
    fill_in "Creada", with: @mail_dato.creada
    fill_in "Dias", with: @mail_dato.dias
    fill_in "Email", with: @mail_dato.email
    fill_in "Estado", with: @mail_dato.estado
    fill_in "Fase", with: @mail_dato.fase
    fill_in "Fecha", with: @mail_dato.fecha
    fill_in "Id nota", with: @mail_dato.id_nota
    fill_in "Id sol", with: @mail_dato.id_sol
    fill_in "Id usu", with: @mail_dato.id_usu
    fill_in "Nombre", with: @mail_dato.nombre
    click_on "Update Mail dato"

    assert_text "Mail dato was successfully updated"
    click_on "Back"
  end

  test "destroying a Mail dato" do
    visit mail_datos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mail dato was successfully destroyed"
  end
end
