require "test_helper"

class MailDatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_dato = mail_datos(:one)
  end

  test "should get index" do
    get mail_datos_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_dato_url
    assert_response :success
  end

  test "should create mail_dato" do
    assert_difference('MailDato.count') do
      post mail_datos_url, params: { mail_dato: { actualizada: @mail_dato.actualizada, comentario: @mail_dato.comentario, creada: @mail_dato.creada, dias: @mail_dato.dias, email: @mail_dato.email, estado: @mail_dato.estado, fase: @mail_dato.fase, fecha: @mail_dato.fecha, id_nota: @mail_dato.id_nota, id_sol: @mail_dato.id_sol, id_usu: @mail_dato.id_usu, nombre: @mail_dato.nombre } }
    end

    assert_redirected_to mail_dato_url(MailDato.last)
  end

  test "should show mail_dato" do
    get mail_dato_url(@mail_dato)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_dato_url(@mail_dato)
    assert_response :success
  end

  test "should update mail_dato" do
    patch mail_dato_url(@mail_dato), params: { mail_dato: { actualizada: @mail_dato.actualizada, comentario: @mail_dato.comentario, creada: @mail_dato.creada, dias: @mail_dato.dias, email: @mail_dato.email, estado: @mail_dato.estado, fase: @mail_dato.fase, fecha: @mail_dato.fecha, id_nota: @mail_dato.id_nota, id_sol: @mail_dato.id_sol, id_usu: @mail_dato.id_usu, nombre: @mail_dato.nombre } }
    assert_redirected_to mail_dato_url(@mail_dato)
  end

  test "should destroy mail_dato" do
    assert_difference('MailDato.count', -1) do
      delete mail_dato_url(@mail_dato)
    end

    assert_redirected_to mail_datos_url
  end
end
