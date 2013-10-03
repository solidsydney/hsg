class Picture < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "600x600>", :thumb => "200x150>" }

  belongs_to :student
  has_many :comments, :as => :commentable
end
