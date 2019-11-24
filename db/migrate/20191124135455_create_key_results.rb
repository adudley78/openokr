class CreateKeyResults < ActiveRecord::Migration[6.0]
  def change
    create_table :key_results do |t|
      t.text :description
      t.string :measure
      t.string :due_date
      t.belongs_to :user

      t.timestamps
    end
  end
end
