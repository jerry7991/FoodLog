class Entry < ApplicationRecord
  
  # Valiadtions

  validates :calories, :protiens, :carbohydrates, :fats, :meal_type, presence: true
  
  
  def day
      self.created_at.strftime("%b %e, %y")
  end
end
