json.extract! create_user, :id, :name, :email, :password_digest, :created_at, :updated_at
json.url create_user_url(create_user, format: :json)
