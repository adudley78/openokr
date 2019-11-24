class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.text :description
      t.float :score
      t.string :label
      t.string :type
      t.belongs_to :user

      t.timestamps
    end
  end
end
