json.extract! plan, :id, :name, :code, :price_cents, :currency, : monthly_interview_limit, :monthly_minutes_limit, : priority_support, :custom_domain, :features, :status, :created_at, :updated_at
json.url plan_url(plan, format: :json)
