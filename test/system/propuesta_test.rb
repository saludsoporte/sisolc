require "application_system_test_case"

class PropuestaTest < ApplicationSystemTestCase
  setup do
    @propuestum = propuesta(:one)
  end

  test "visiting the index" do
    visit propuesta_url
    assert_selector "h1", text: "Propuesta"
  end

  test "creating a Propuestum" do
    visit propuesta_url
    click_on "New Propuestum"

    fill_in "Anexo", with: @propuestum.anexo
    fill_in "Cantidad", with: @propuestum.cantidad
    fill_in "Catalogo", with: @propuestum.catalogo_id
    fill_in "Iva", with: @propuestum.iva
    fill_in "Partida", with: @propuestum.partida_id
    fill_in "Precio", with: @propuestum.precio
    fill_in "Proceso", with: @propuestum.proceso_id
    fill_in "Provee", with: @propuestum.provee_id
    fill_in "Reng", with: @propuestum.reng_id
    click_on "Create Propuestum"

    assert_text "Propuestum was successfully created"
    click_on "Back"
  end

  test "updating a Propuestum" do
    visit propuesta_url
    click_on "Edit", match: :first

    fill_in "Anexo", with: @propuestum.anexo
    fill_in "Cantidad", with: @propuestum.cantidad
    fill_in "Catalogo", with: @propuestum.catalogo_id
    fill_in "Iva", with: @propuestum.iva
    fill_in "Partida", with: @propuestum.partida_id
    fill_in "Precio", with: @propuestum.precio
    fill_in "Proceso", with: @propuestum.proceso_id
    fill_in "Provee", with: @propuestum.provee_id
    fill_in "Reng", with: @propuestum.reng_id
    click_on "Update Propuestum"

    assert_text "Propuestum was successfully updated"
    click_on "Back"
  end

  test "destroying a Propuestum" do
    visit propuesta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Propuestum was successfully destroyed"
  end
end
