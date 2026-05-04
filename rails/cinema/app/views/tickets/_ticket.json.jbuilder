json.extract! ticket, :id, :tittle, :price, :desciption, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
