json.extract! complaint_list, :id, :title, :description, :status, :created_at, :updated_at
json.url complaint_list_url(complaint_list, format: :json)
