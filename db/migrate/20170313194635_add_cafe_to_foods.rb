class AddCafeToFoods < ActiveRecord::Migration[5.0]
  def change
    add_reference :foods, :cafe, foreign_key: true
  end
end
