json.extract! employee, :id, :name, :nationality, :email, :position, :birth_date, :role, :department_id, :manager_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
