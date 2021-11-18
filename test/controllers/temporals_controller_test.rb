require "test_helper"

class TemporalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temporal = temporals(:one)
  end

  test "should get index" do
    get temporals_url
    assert_response :success
  end

  test "should get new" do
    get new_temporal_url
    assert_response :success
  end

  test "should create temporal" do
    assert_difference('Temporal.count') do
      post temporals_url, params: { temporal: { c1: @temporal.c1, c10: @temporal.c10, c11: @temporal.c11, c12: @temporal.c12, c13: @temporal.c13, c14: @temporal.c14, c15: @temporal.c15, c16: @temporal.c16, c17: @temporal.c17, c18: @temporal.c18, c19: @temporal.c19, c2: @temporal.c2, c20: @temporal.c20, c21: @temporal.c21, c22: @temporal.c22, c23: @temporal.c23, c24: @temporal.c24, c25: @temporal.c25, c26: @temporal.c26, c27: @temporal.c27, c28: @temporal.c28, c29: @temporal.c29, c3: @temporal.c3, c30: @temporal.c30, c31: @temporal.c31, c32: @temporal.c32, c33: @temporal.c33, c34: @temporal.c34, c35: @temporal.c35, c36: @temporal.c36, c37: @temporal.c37, c38: @temporal.c38, c39: @temporal.c39, c4: @temporal.c4, c40: @temporal.c40, c5: @temporal.c5, c6: @temporal.c6, c7: @temporal.c7, c8: @temporal.c8, c9: @temporal.c9 } }
    end

    assert_redirected_to temporal_url(Temporal.last)
  end

  test "should show temporal" do
    get temporal_url(@temporal)
    assert_response :success
  end

  test "should get edit" do
    get edit_temporal_url(@temporal)
    assert_response :success
  end

  test "should update temporal" do
    patch temporal_url(@temporal), params: { temporal: { c1: @temporal.c1, c10: @temporal.c10, c11: @temporal.c11, c12: @temporal.c12, c13: @temporal.c13, c14: @temporal.c14, c15: @temporal.c15, c16: @temporal.c16, c17: @temporal.c17, c18: @temporal.c18, c19: @temporal.c19, c2: @temporal.c2, c20: @temporal.c20, c21: @temporal.c21, c22: @temporal.c22, c23: @temporal.c23, c24: @temporal.c24, c25: @temporal.c25, c26: @temporal.c26, c27: @temporal.c27, c28: @temporal.c28, c29: @temporal.c29, c3: @temporal.c3, c30: @temporal.c30, c31: @temporal.c31, c32: @temporal.c32, c33: @temporal.c33, c34: @temporal.c34, c35: @temporal.c35, c36: @temporal.c36, c37: @temporal.c37, c38: @temporal.c38, c39: @temporal.c39, c4: @temporal.c4, c40: @temporal.c40, c5: @temporal.c5, c6: @temporal.c6, c7: @temporal.c7, c8: @temporal.c8, c9: @temporal.c9 } }
    assert_redirected_to temporal_url(@temporal)
  end

  test "should destroy temporal" do
    assert_difference('Temporal.count', -1) do
      delete temporal_url(@temporal)
    end

    assert_redirected_to temporals_url
  end
end
