class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :photo, :styles => { :thumb => "100x100#", :mini => "50x50#" }, :default_url => "/images/:style/missing.png"

  belongs_to :school
  has_many :comments
  has_many :pictures
  has_many :assignments
  has_many :gists

  def school_name
    school.try(:name)
  end

  def school_name=(name)
    self.school = School.find_by_name(name) if name.present?
  end


end
