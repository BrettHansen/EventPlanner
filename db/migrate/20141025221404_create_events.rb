class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :event_type
      t.string :venue
      t.integer :tickets_avail
      t.integer :tickets_total
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
