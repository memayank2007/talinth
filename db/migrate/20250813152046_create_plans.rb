# db/migrate/XXXXXXXXXXXX_create_plans.rb
class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.string  :name,  null: false
      t.string  :code,  null: false # e.g., "free", "pro", "enterprise"
      t.integer :price_cents, null: false, default: 0
      t.string  :currency,    null: false, default: "INR"
      t.integer :monthly_interview_limit, null: false, default: 20
      t.integer :monthly_minutes_limit,   null: false, default: 200
      t.boolean :priority_support, null: false, default: false
      t.boolean :custom_domain,   null: false, default: false
      t.jsonb   :features, null: false, default: {}
      t.integer :status, null: false, default: 0 # 0: active, 1: archived

      t.timestamps
    end

    add_index :plans, :code, unique: true

  end
end
