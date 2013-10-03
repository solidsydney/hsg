class AddDetailsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :facebook, :string
    add_column :students, :twitter, :string
    add_column :students, :google_plus, :string
    add_column :students, :likes, :string
    add_column :students, :dislikes, :string
    add_column :students, :discipline, :string
    add_column :students, :best_subject, :string
    add_column :students, :hobbies, :string
  end
end
