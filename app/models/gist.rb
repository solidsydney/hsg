class Gist < ActiveRecord::Base
  has_many :comments, :as => :commentable
  belongs_to :student
end
