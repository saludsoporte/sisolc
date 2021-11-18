require "application_system_test_case"

class ReordensTest < ApplicationSystemTestCase
  setup do
    @reorden = reordens(:one)
  end

  test "visiting the index" do
    visit reordens_url
    assert_selector "h1", text: "Reordens"
  end

  test "creating a Reorden" do
    visit reordens_url
    click_on "New Reorden"

    fill_in "Almacen", with: @reorden.almacen_id
    fill_in "Catalogo", with: @reorden.catalogo_id
    fill_in "Estado", with: @reorden.estado_id
    fill_in "Existencia", with: @reorden.existencia
    fill_in "Nombre", with: @reorden.nombre
    fill_in "Notifica", with: @reorden.notifica_id
    fill_in "Partida", with: @reorden.partida_id
    fill_in "Punto", with: @reorden.punto
    fill_in "Tipo", with: @reorden.tipo_id
    fill_in "User", with: @reorden.user_id
    fill_in "Vigenciaf", with: @reorden.vigenciaf
    fill_in "Vigenciai", with: @reorden.vigenciai
    click_on "Create Reorden"

    assert_text "Reorden was successfully created"
    click_on "Back"
  end

  test "updating a Reorden" do
    visit reordens_url
    click_on "Edit", match: :first

    fill_in "Almacen", with: @reorden.almacen_id
    fill_in "Catalogo", with: @reorden.catalogo_id
    fill_in "Estado", with: @reorden.estado_id
    fill_in "Existencia", with: @reorden.existencia
    fill_in "Nombre", with: @reorden.nombre
    fill_in "Notifica", with: @reorden.notifica_id
    fill_in "Partida", with: @reorden.partida_id
    fill_in "Punto", with: @reorden.punto
    fill_in "Tipo", with: @reorden.tipo_id
    fill_in "User", with: @reorden.user_id
    fill_in "Vigenciaf", with: @reorden.vigenciaf
    fill_in "Vigenciai", with: @reorden.vigenciai
    click_on "Update Reorden"

    assert_text "Reorden was successfully updated"
    click_on "Back"
  end

  test "destroying a Reorden" do
    visit reordens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reorden was successfully destroyed"
  end
end
