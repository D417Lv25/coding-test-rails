class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_index :customers, :email
  end
end
