json.extract! permit, :id, :create_ans_ques, :integer, :votes_pos, :comment, :votes_neg, :adm_tag, :adm_uni, :modificar_contenido, :created_at, :updated_at
json.url permit_url(permit, format: :json)
