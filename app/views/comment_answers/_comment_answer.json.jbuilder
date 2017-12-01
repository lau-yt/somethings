json.extract! comment_answer, :id, :descripcion, :user_id, :answer_id, :created_at, :updated_at
json.url comment_answer_url(comment_answer, format: :json)
