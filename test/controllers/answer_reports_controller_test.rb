require 'test_helper'

class AnswerReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_report = answer_reports(:one)
  end

  test "should get index" do
    get answer_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_report_url
    assert_response :success
  end

  test "should create answer_report" do
    assert_difference('AnswerReport.count') do
      post answer_reports_url, params: { answer_report: { answer_id: @answer_report.answer_id, titulo: @answer_report.titulo } }
    end

    assert_redirected_to answer_report_url(AnswerReport.last)
  end

  test "should show answer_report" do
    get answer_report_url(@answer_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_report_url(@answer_report)
    assert_response :success
  end

  test "should update answer_report" do
    patch answer_report_url(@answer_report), params: { answer_report: { answer_id: @answer_report.answer_id, titulo: @answer_report.titulo } }
    assert_redirected_to answer_report_url(@answer_report)
  end

  test "should destroy answer_report" do
    assert_difference('AnswerReport.count', -1) do
      delete answer_report_url(@answer_report)
    end

    assert_redirected_to answer_reports_url
  end
end
