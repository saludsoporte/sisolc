require "test_helper"

class MailNotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_notum = mail_nota(:one)
  end

  test "should get index" do
    get mail_nota_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_notum_url
    assert_response :success
  end

  test "should create mail_notum" do
    assert_difference('MailNotum.count') do
      post mail_nota_url, params: { mail_notum: { correo: @mail_notum.correo, fase: @mail_notum.fase, fecha: @mail_notum.fecha, id_nota: @mail_notum.id_nota, nombre: @mail_notum.nombre } }
    end

    assert_redirected_to mail_notum_url(MailNotum.last)
  end

  test "should show mail_notum" do
    get mail_notum_url(@mail_notum)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_notum_url(@mail_notum)
    assert_response :success
  end

  test "should update mail_notum" do
    patch mail_notum_url(@mail_notum), params: { mail_notum: { correo: @mail_notum.correo, fase: @mail_notum.fase, fecha: @mail_notum.fecha, id_nota: @mail_notum.id_nota, nombre: @mail_notum.nombre } }
    assert_redirected_to mail_notum_url(@mail_notum)
  end

  test "should destroy mail_notum" do
    assert_difference('MailNotum.count', -1) do
      delete mail_notum_url(@mail_notum)
    end

    assert_redirected_to mail_nota_url
  end
end
