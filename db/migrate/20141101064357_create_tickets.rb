class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :user, index: true
      t.integer :event_id
      t.integer :quantity

      t.timestamps
    end
  end
end
