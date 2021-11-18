require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Area", with: @user.area_id
    fill_in "Crypted password", with: @user.crypted_password
    fill_in "Dato1", with: @user.dato1
    fill_in "Dato2", with: @user.dato2
    fill_in "Email", with: @user.email
    fill_in "Estructura", with: @user.estructura_id
    fill_in "Login", with: @user.login
    fill_in "Nombre", with: @user.nombre
    fill_in "Puesto", with: @user.puesto
    fill_in "Remember token", with: @user.remember_token
    fill_in "Remember token expires at", with: @user.remember_token_expires_at
    fill_in "Rol", with: @user.rol_id
    fill_in "Salt", with: @user.salt
    fill_in "Titulo", with: @user.titulo
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Area", with: @user.area_id
    fill_in "Crypted password", with: @user.crypted_password
    fill_in "Dato1", with: @user.dato1
    fill_in "Dato2", with: @user.dato2
    fill_in "Email", with: @user.email
    fill_in "Estructura", with: @user.estructura_id
    fill_in "Login", with: @user.login
    fill_in "Nombre", with: @user.nombre
    fill_in "Puesto", with: @user.puesto
    fill_in "Remember token", with: @user.remember_token
    fill_in "Remember token expires at", with: @user.remember_token_expires_at
    fill_in "Rol", with: @user.rol_id
    fill_in "Salt", with: @user.salt
    fill_in "Titulo", with: @user.titulo
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
