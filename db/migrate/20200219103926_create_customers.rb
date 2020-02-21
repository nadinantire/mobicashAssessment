class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :adress, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
