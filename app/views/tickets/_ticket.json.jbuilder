json.extract! ticket, :id, :user_id, :seance_id, :status_id, :number, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)