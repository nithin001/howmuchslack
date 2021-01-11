class CreateSlacks < ActiveRecord::Migration[6.0]
  def change
    create_table :slacks do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :hours
      t.integer :minutes

      t.timestamps
    end
  end
end
