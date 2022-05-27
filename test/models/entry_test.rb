require 'test_helper'

class EntryTest < ActiveSupport::TestCase
    test "is valid with valid attributes" do
       entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, protiens: 20, fats: 10, calories:400)
       assert entry.save
    end

    test "should not save entry without calories" do
      entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, protiens: 20, fats: 10)
      assert entry.save
    end
end
