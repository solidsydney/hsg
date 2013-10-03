class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :subject
      t.text :question
      t.integer :student_id

      t.timestamps
    end
  end
end
