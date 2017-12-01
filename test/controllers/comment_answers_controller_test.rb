require 'test_helper'

class CommentAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_answer = comment_answers(:one)
  end

  test "should get index" do
    get comment_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_answer_url
    assert_response :success
  end

  test "should create comment_answer" do
    assert_difference('CommentAnswer.count') do
      post comment_answers_url, params: { comment_answer: { answer_id: @comment_answer.answer_id, descripcion: @comment_answer.descripcion, user_id: @comment_answer.user_id } }
    end

    assert_redirected_to comment_answer_url(CommentAnswer.last)
  end

  test "should show comment_answer" do
    get comment_answer_url(@comment_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_answer_url(@comment_answer)
    assert_response :success
  end

  test "should update comment_answer" do
    patch comment_answer_url(@comment_answer), params: { comment_answer: { answer_id: @comment_answer.answer_id, descripcion: @comment_answer.descripcion, user_id: @comment_answer.user_id } }
    assert_redirected_to comment_answer_url(@comment_answer)
  end

  test "should destroy comment_answer" do
    assert_difference('CommentAnswer.count', -1) do
      delete comment_answer_url(@comment_answer)
    end

    assert_redirected_to comment_answers_url
  end
end
