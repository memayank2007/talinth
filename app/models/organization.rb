class Organization < ApplicationRecord
  
    # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be 10 digits" }
  validates :subdomain,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/, message: "only allows lowercase letters, numbers, and hyphens" }

  # Example: Require these other important fields if you have them
  validates :primary_contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :primary_contact_name, presence: true
  validates :plan_id, presence: true

  belongs_to :plan, required: true

end
