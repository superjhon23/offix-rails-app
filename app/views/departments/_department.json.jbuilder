json.extract! department, :id, :name, :description, :employees_count, :created_at, :updated_at
json.url department_url(department, format: :json)
