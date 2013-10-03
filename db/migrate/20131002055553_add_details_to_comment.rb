class AddDetailsToComment < ActiveRecord::Migration
  def change
    add_column :comments, :details, :string
  end
end
