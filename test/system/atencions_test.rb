require "application_system_test_case"

class AtencionsTest < ApplicationSystemTestCase
  setup do
    @atencion = atencions(:one)
  end

  test "visiting the index" do
    visit atencions_url
    assert_selector "h1", text: "Atencions"
  end

  test "creating a Atencion" do
    visit atencions_url
    click_on "New Atencion"

    fill_in "Aborto", with: @atencion.aborto
    fill_in "Altapor", with: @atencion.altapor
    fill_in "Cesareas", with: @atencion.cesareas
    fill_in "Clue", with: @atencion.clue_id
    fill_in "Diagnosticos", with: @atencion.diagnosticos
    fill_in "Fecha", with: @atencion.fecha
    fill_in "Fechaeg", with: @atencion.fechaeg
    fill_in "Gesta", with: @atencion.gesta
    fill_in "Paciente", with: @atencion.paciente_id
    fill_in "Para", with: @atencion.para
    fill_in "Semanas", with: @atencion.semanas
    fill_in "Terminacion", with: @atencion.terminacion
    fill_in "Termino", with: @atencion.termino
    fill_in "Tipo", with: @atencion.tipo_id
    fill_in "Tipoat", with: @atencion.tipoat
    fill_in "Unidad", with: @atencion.unidad
    fill_in "User", with: @atencion.user_id
    click_on "Create Atencion"

    assert_text "Atencion was successfully created"
    click_on "Back"
  end

  test "updating a Atencion" do
    visit atencions_url
    click_on "Edit", match: :first

    fill_in "Aborto", with: @atencion.aborto
    fill_in "Altapor", with: @atencion.altapor
    fill_in "Cesareas", with: @atencion.cesareas
    fill_in "Clue", with: @atencion.clue_id
    fill_in "Diagnosticos", with: @atencion.diagnosticos
    fill_in "Fecha", with: @atencion.fecha
    fill_in "Fechaeg", with: @atencion.fechaeg
    fill_in "Gesta", with: @atencion.gesta
    fill_in "Paciente", with: @atencion.paciente_id
    fill_in "Para", with: @atencion.para
    fill_in "Semanas", with: @atencion.semanas
    fill_in "Terminacion", with: @atencion.terminacion
    fill_in "Termino", with: @atencion.termino
    fill_in "Tipo", with: @atencion.tipo_id
    fill_in "Tipoat", with: @atencion.tipoat
    fill_in "Unidad", with: @atencion.unidad
    fill_in "User", with: @atencion.user_id
    click_on "Update Atencion"

    assert_text "Atencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Atencion" do
    visit atencions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atencion was successfully destroyed"
  end
end
