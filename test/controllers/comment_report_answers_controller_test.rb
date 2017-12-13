require 'test_helper'

class CommentReportAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_report_answer = comment_report_answers(:one)
  end

  test "should get index" do
    get comment_report_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_report_answer_url
    assert_response :success
  end

  test "should create comment_report_answer" do
    assert_difference('CommentReportAnswer.count') do
      post comment_report_answers_url, params: { comment_report_answer: { comment_answer_id: @comment_report_answer.comment_answer_id, titulo: @comment_report_answer.titulo } }
    end

    assert_redirected_to comment_report_answer_url(CommentReportAnswer.last)
  end

  test "should show comment_report_answer" do
    get comment_report_answer_url(@comment_report_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_report_answer_url(@comment_report_answer)
    assert_response :success
  end

  test "should update comment_report_answer" do
    patch comment_report_answer_url(@comment_report_answer), params: { comment_report_answer: { comment_answer_id: @comment_report_answer.comment_answer_id, titulo: @comment_report_answer.titulo } }
    assert_redirected_to comment_report_answer_url(@comment_report_answer)
  end

  test "should destroy comment_report_answer" do
    assert_difference('CommentReportAnswer.count', -1) do
      delete comment_report_answer_url(@comment_report_answer)
    end

    assert_redirected_to comment_report_answers_url
  end
end
