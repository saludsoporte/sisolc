require "application_system_test_case"

class VDblinkConexionsTest < ApplicationSystemTestCase
  setup do
    @v_dblink_conexion = v_dblink_conexions(:one)
  end

  test "visiting the index" do
    visit v_dblink_conexions_url
    assert_selector "h1", text: "V Dblink Conexions"
  end

  test "creating a V dblink conexion" do
    visit v_dblink_conexions_url
    click_on "New V Dblink Conexion"

    fill_in "Conexion presup", with: @v_dblink_conexion.conexion_presup
    fill_in "Ejercicio", with: @v_dblink_conexion.ejercicio
    click_on "Create V dblink conexion"

    assert_text "V dblink conexion was successfully created"
    click_on "Back"
  end

  test "updating a V dblink conexion" do
    visit v_dblink_conexions_url
    click_on "Edit", match: :first

    fill_in "Conexion presup", with: @v_dblink_conexion.conexion_presup
    fill_in "Ejercicio", with: @v_dblink_conexion.ejercicio
    click_on "Update V dblink conexion"

    assert_text "V dblink conexion was successfully updated"
    click_on "Back"
  end

  test "destroying a V dblink conexion" do
    visit v_dblink_conexions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "V dblink conexion was successfully destroyed"
  end
end
