class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :event_date
      t.date :end_date
      t.string :duration
      t.string :external_links

      t.timestamps
    end
  end
end
