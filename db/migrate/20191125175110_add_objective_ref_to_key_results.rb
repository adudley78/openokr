class AddObjectiveRefToKeyResults < ActiveRecord::Migration[6.0]
  def change
    add_reference :key_results, :objective, null: false, foreign_key: true
  end
end
