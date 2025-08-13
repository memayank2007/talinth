class Plan < ApplicationRecord
    has_many :organizations
  
    # Either style works with integer columns — pick ONE:
  
    # 1) Explicit mapping (my preference)
    enum :status, { active: 0, archived: 1 }
  
    # 2) OR array style (Rails maps by index)
    # enum status: [:active, :archived]
  
    validates :name, presence: true
    validates :code, presence: true, uniqueness: { case_sensitive: false },
                     format: { with: /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/ }
    validates :price_cents, numericality: { greater_than_or_equal_to: 0 }
  end
  