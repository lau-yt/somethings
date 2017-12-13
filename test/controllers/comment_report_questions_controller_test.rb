require 'test_helper'

class CommentReportQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_report_question = comment_report_questions(:one)
  end

  test "should get index" do
    get comment_report_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_report_question_url
    assert_response :success
  end

  test "should create comment_report_question" do
    assert_difference('CommentReportQuestion.count') do
      post comment_report_questions_url, params: { comment_report_question: { comment_question_id: @comment_report_question.comment_question_id, titulo: @comment_report_question.titulo } }
    end

    assert_redirected_to comment_report_question_url(CommentReportQuestion.last)
  end

  test "should show comment_report_question" do
    get comment_report_question_url(@comment_report_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_report_question_url(@comment_report_question)
    assert_response :success
  end

  test "should update comment_report_question" do
    patch comment_report_question_url(@comment_report_question), params: { comment_report_question: { comment_question_id: @comment_report_question.comment_question_id, titulo: @comment_report_question.titulo } }
    assert_redirected_to comment_report_question_url(@comment_report_question)
  end

  test "should destroy comment_report_question" do
    assert_difference('CommentReportQuestion.count', -1) do
      delete comment_report_question_url(@comment_report_question)
    end

    assert_redirected_to comment_report_questions_url
  end
end
