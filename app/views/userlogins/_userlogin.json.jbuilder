json.extract! userlogin, :id, :email, :contr, :on, :created_at, :updated_at
json.url userlogin_url(userlogin, format: :json)
