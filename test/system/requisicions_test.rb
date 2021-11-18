require "application_system_test_case"

class RequisicionsTest < ApplicationSystemTestCase
  setup do
    @requisicion = requisicions(:one)
  end

  test "visiting the index" do
    visit requisicions_url
    assert_selector "h1", text: "Requisicions"
  end

  test "creating a Requisicion" do
    visit requisicions_url
    click_on "New Requisicion"

    check "Anexos" if @requisicion.anexos
    fill_in "Autoriza", with: @requisicion.autoriza_id
    fill_in "Clues", with: @requisicion.clues_id
    fill_in "Estado", with: @requisicion.estado_id
    fill_in "Etiqueta", with: @requisicion.etiqueta
    fill_in "Fecha", with: @requisicion.fecha
    fill_in "Fuente", with: @requisicion.fuente_id
    fill_in "Importe", with: @requisicion.importe
    fill_in "User", with: @requisicion.user_id
    fill_in "Vobo", with: @requisicion.vobo_id
    click_on "Create Requisicion"

    assert_text "Requisicion was successfully created"
    click_on "Back"
  end

  test "updating a Requisicion" do
    visit requisicions_url
    click_on "Edit", match: :first

    check "Anexos" if @requisicion.anexos
    fill_in "Autoriza", with: @requisicion.autoriza_id
    fill_in "Clues", with: @requisicion.clues_id
    fill_in "Estado", with: @requisicion.estado_id
    fill_in "Etiqueta", with: @requisicion.etiqueta
    fill_in "Fecha", with: @requisicion.fecha
    fill_in "Fuente", with: @requisicion.fuente_id
    fill_in "Importe", with: @requisicion.importe
    fill_in "User", with: @requisicion.user_id
    fill_in "Vobo", with: @requisicion.vobo_id
    click_on "Update Requisicion"

    assert_text "Requisicion was successfully updated"
    click_on "Back"
  end

  test "destroying a Requisicion" do
    visit requisicions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requisicion was successfully destroyed"
  end
end
