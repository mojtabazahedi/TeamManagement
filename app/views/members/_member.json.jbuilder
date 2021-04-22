json.extract! member, :id, :firstname, :lastname, :birthday, :number, :team, :created_at, :updated_at
json.url member_url(member, format: :json)
