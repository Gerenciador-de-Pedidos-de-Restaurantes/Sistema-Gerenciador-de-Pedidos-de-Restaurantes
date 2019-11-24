json.extract! adress, :id, :street, :block, :number, :additional_info, :created_at, :updated_at
json.url adress_url(adress, format: :json)
