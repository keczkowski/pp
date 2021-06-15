json.extract! contact_form, :id, :email, :title, :body, :name, :created_at, :updated_at
json.url contact_form_url(contact_form, format: :json)
