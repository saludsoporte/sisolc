require "test_helper"

class AtencionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atencion = atencions(:one)
  end

  test "should get index" do
    get atencions_url
    assert_response :success
  end

  test "should get new" do
    get new_atencion_url
    assert_response :success
  end

  test "should create atencion" do
    assert_difference('Atencion.count') do
      post atencions_url, params: { atencion: { aborto: @atencion.aborto, altapor: @atencion.altapor, cesareas: @atencion.cesareas, clue_id: @atencion.clue_id, diagnosticos: @atencion.diagnosticos, fecha: @atencion.fecha, fechaeg: @atencion.fechaeg, gesta: @atencion.gesta, paciente_id: @atencion.paciente_id, para: @atencion.para, semanas: @atencion.semanas, terminacion: @atencion.terminacion, termino: @atencion.termino, tipo_id: @atencion.tipo_id, tipoat: @atencion.tipoat, unidad: @atencion.unidad, user_id: @atencion.user_id } }
    end

    assert_redirected_to atencion_url(Atencion.last)
  end

  test "should show atencion" do
    get atencion_url(@atencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_atencion_url(@atencion)
    assert_response :success
  end

  test "should update atencion" do
    patch atencion_url(@atencion), params: { atencion: { aborto: @atencion.aborto, altapor: @atencion.altapor, cesareas: @atencion.cesareas, clue_id: @atencion.clue_id, diagnosticos: @atencion.diagnosticos, fecha: @atencion.fecha, fechaeg: @atencion.fechaeg, gesta: @atencion.gesta, paciente_id: @atencion.paciente_id, para: @atencion.para, semanas: @atencion.semanas, terminacion: @atencion.terminacion, termino: @atencion.termino, tipo_id: @atencion.tipo_id, tipoat: @atencion.tipoat, unidad: @atencion.unidad, user_id: @atencion.user_id } }
    assert_redirected_to atencion_url(@atencion)
  end

  test "should destroy atencion" do
    assert_difference('Atencion.count', -1) do
      delete atencion_url(@atencion)
    end

    assert_redirected_to atencions_url
  end
end
