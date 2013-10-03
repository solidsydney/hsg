class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :title
      t.text :body
      t.integer :student_id

      t.timestamps
    end
  end
end
