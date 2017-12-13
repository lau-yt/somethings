json.extract! question_report, :id, :titulo, :question_id, :created_at, :updated_at
json.url question_report_url(question_report, format: :json)
