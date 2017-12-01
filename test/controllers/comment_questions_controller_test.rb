require 'test_helper'

class CommentQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_question = comment_questions(:one)
  end

  test "should get index" do
    get comment_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_question_url
    assert_response :success
  end

  test "should create comment_question" do
    assert_difference('CommentQuestion.count') do
      post comment_questions_url, params: { comment_question: { descripcion: @comment_question.descripcion, question_id: @comment_question.question_id, user_id: @comment_question.user_id } }
    end

    assert_redirected_to comment_question_url(CommentQuestion.last)
  end

  test "should show comment_question" do
    get comment_question_url(@comment_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_question_url(@comment_question)
    assert_response :success
  end

  test "should update comment_question" do
    patch comment_question_url(@comment_question), params: { comment_question: { descripcion: @comment_question.descripcion, question_id: @comment_question.question_id, user_id: @comment_question.user_id } }
    assert_redirected_to comment_question_url(@comment_question)
  end

  test "should destroy comment_question" do
    assert_difference('CommentQuestion.count', -1) do
      delete comment_question_url(@comment_question)
    end

    assert_redirected_to comment_questions_url
  end
end
