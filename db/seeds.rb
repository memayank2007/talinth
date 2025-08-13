# db/seeds.rb
plans = [
  {
    name: "Free",
    code: "free",
    price_cents: 0,
    currency: "INR",
    monthly_interview_limit: 10,
    monthly_minutes_limit: 100,
    priority_support: false,
    custom_domain: false,
    features: {
      "Video interviews" => true,
      "AI follow-ups" => true,
      "Coding test" => false,
      "Analytics" => "basic"
    },
    status: :active
  },
  {
    name: "Pro",
    code: "pro",
    price_cents: 29900, # ₹299/mo
    currency: "INR",
    monthly_interview_limit: 200,
    monthly_minutes_limit: 2000,
    priority_support: true,
    custom_domain: true,
    features: {
      "Video interviews" => true,
      "AI follow-ups" => true,
      "Coding test" => true,
      "Analytics" => "advanced",
      "SLA" => "24h"
    },
    status: :active
  },
  {
    name: "Enterprise",
    code: "enterprise",
    price_cents: 0, # custom pricing
    currency: "INR",
    monthly_interview_limit: 10_000,
    monthly_minutes_limit: 100_000,
    priority_support: true,
    custom_domain: true,
    features: {
      "Video interviews" => true,
      "AI follow-ups" => true,
      "Coding test" => true,
      "Analytics" => "custom",
      "SLA" => "4h",
      "SSO/SAML" => true,
      "Dedicated support" => true
    },
    status: :active
  }
]

plans.each do |attrs|
  plan = Plan.find_or_initialize_by(code: attrs[:code])
  plan.update!(attrs)
end

# Backfill existing organizations to "free" if plan_id is nil
free_plan = Plan.find_by!(code: "free")
Organization.where(plan_id: nil).update_all(plan_id: free_plan.id)
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
