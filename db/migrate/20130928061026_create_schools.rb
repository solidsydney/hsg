class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.string :address
      t.string :motto
      t.text :about

      t.timestamps
    end
  end
end
