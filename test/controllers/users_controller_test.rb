require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { area_id: @user.area_id, crypted_password: @user.crypted_password, dato1: @user.dato1, dato2: @user.dato2, email: @user.email, estructura_id: @user.estructura_id, login: @user.login, nombre: @user.nombre, puesto: @user.puesto, remember_token: @user.remember_token, remember_token_expires_at: @user.remember_token_expires_at, rol_id: @user.rol_id, salt: @user.salt, titulo: @user.titulo } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { area_id: @user.area_id, crypted_password: @user.crypted_password, dato1: @user.dato1, dato2: @user.dato2, email: @user.email, estructura_id: @user.estructura_id, login: @user.login, nombre: @user.nombre, puesto: @user.puesto, remember_token: @user.remember_token, remember_token_expires_at: @user.remember_token_expires_at, rol_id: @user.rol_id, salt: @user.salt, titulo: @user.titulo } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
