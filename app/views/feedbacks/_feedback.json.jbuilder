json.extract! feedback, :id, :body, :employee_id, :feedbackable_id, :feedbackable_type, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
