json.extract! company, :id, :name, :website, :address, :city, :state, :zip, :phone, :Facebook_URL, :LinkedIn_URL, :Google_A_ID, :Instagram_URL, :Twitter_URL, :created_at, :updated_at
json.url company_url(company, format: :json)
