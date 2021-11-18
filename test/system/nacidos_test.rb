require "application_system_test_case"

class NacidosTest < ApplicationSystemTestCase
  setup do
    @nacido = nacidos(:one)
  end

  test "visiting the index" do
    visit nacidos_url
    assert_selector "h1", text: "Nacidos"
  end

  test "creating a Nacido" do
    visit nacidos_url
    click_on "New Nacido"

    fill_in "Atencion", with: @nacido.atencion
    fill_in "Atencion", with: @nacido.atencion_id
    fill_in "Defuncion", with: @nacido.defuncion
    fill_in "Egreso", with: @nacido.egreso
    fill_in "Evolucion", with: @nacido.evolucion
    fill_in "Paciente", with: @nacido.paciente_id
    fill_in "User", with: @nacido.user_id
    click_on "Create Nacido"

    assert_text "Nacido was successfully created"
    click_on "Back"
  end

  test "updating a Nacido" do
    visit nacidos_url
    click_on "Edit", match: :first

    fill_in "Atencion", with: @nacido.atencion
    fill_in "Atencion", with: @nacido.atencion_id
    fill_in "Defuncion", with: @nacido.defuncion
    fill_in "Egreso", with: @nacido.egreso
    fill_in "Evolucion", with: @nacido.evolucion
    fill_in "Paciente", with: @nacido.paciente_id
    fill_in "User", with: @nacido.user_id
    click_on "Update Nacido"

    assert_text "Nacido was successfully updated"
    click_on "Back"
  end

  test "destroying a Nacido" do
    visit nacidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nacido was successfully destroyed"
  end
end
