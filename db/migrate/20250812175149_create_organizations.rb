class CreateOrganizations < ActiveRecord::Migration[8.0]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name
      t.string :subdomain
      t.string :custom_domain
      t.string :logo_url
      t.string :primary_contact_name
      t.string :primary_contact_email
      t.string :phone
      t.string :industry
      t.integer :size
      t.string :plan_id
      t.datetime :plan_expires_at
      t.integer :max_users
      t.integer :max_interviews_per_month
      t.text :billing_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :time_zone
      t.string :language
      t.string :ai_model
      t.string :branding_color
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
