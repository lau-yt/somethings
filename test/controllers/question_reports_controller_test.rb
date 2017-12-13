require 'test_helper'

class QuestionReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_report = question_reports(:one)
  end

  test "should get index" do
    get question_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_question_report_url
    assert_response :success
  end

  test "should create question_report" do
    assert_difference('QuestionReport.count') do
      post question_reports_url, params: { question_report: { question_id: @question_report.question_id, titulo: @question_report.titulo } }
    end

    assert_redirected_to question_report_url(QuestionReport.last)
  end

  test "should show question_report" do
    get question_report_url(@question_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_report_url(@question_report)
    assert_response :success
  end

  test "should update question_report" do
    patch question_report_url(@question_report), params: { question_report: { question_id: @question_report.question_id, titulo: @question_report.titulo } }
    assert_redirected_to question_report_url(@question_report)
  end

  test "should destroy question_report" do
    assert_difference('QuestionReport.count', -1) do
      delete question_report_url(@question_report)
    end

    assert_redirected_to question_reports_url
  end
end
