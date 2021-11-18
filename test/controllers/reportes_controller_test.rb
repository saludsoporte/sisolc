require "test_helper"

class ReportesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte = reportes(:one)
  end

  test "should get index" do
    get reportes_url
    assert_response :success
  end

  test "should get new" do
    get new_reporte_url
    assert_response :success
  end

  test "should create reporte" do
    assert_difference('Reporte.count') do
      post reportes_url, params: { reporte: { cpfin: @reporte.cpfin, cpini: @reporte.cpini, desde: @reporte.desde, hasta: @reporte.hasta, rango1: @reporte.rango1, rango2: @reporte.rango2, reporte: @reporte.reporte, sistema_id: @reporte.sistema_id, texto: @reporte.texto, unidad: @reporte.unidad, usuario: @reporte.usuario } }
    end

    assert_redirected_to reporte_url(Reporte.last)
  end

  test "should show reporte" do
    get reporte_url(@reporte)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_url(@reporte)
    assert_response :success
  end

  test "should update reporte" do
    patch reporte_url(@reporte), params: { reporte: { cpfin: @reporte.cpfin, cpini: @reporte.cpini, desde: @reporte.desde, hasta: @reporte.hasta, rango1: @reporte.rango1, rango2: @reporte.rango2, reporte: @reporte.reporte, sistema_id: @reporte.sistema_id, texto: @reporte.texto, unidad: @reporte.unidad, usuario: @reporte.usuario } }
    assert_redirected_to reporte_url(@reporte)
  end

  test "should destroy reporte" do
    assert_difference('Reporte.count', -1) do
      delete reporte_url(@reporte)
    end

    assert_redirected_to reportes_url
  end
end
