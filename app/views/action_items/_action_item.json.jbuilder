json.extract! action_item, :id, :name, :description, :status, :due_date, :created_at, :updated_at
json.url action_item_url(action_item, format: :json)
