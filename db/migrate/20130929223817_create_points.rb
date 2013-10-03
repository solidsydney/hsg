class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :student_id
      t.integer :question_id
      t.integer :value

      t.timestamps
    end
  end
end
