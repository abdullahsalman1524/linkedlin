class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  Profile_title = [
    "Front-End Developers",
    "Back-End Developers",
    "Full-Stack Developers",
    "Mobile App Developers",
    "Game Developers",
    "DevOps Engineers",
    "Data Scientists",
    "Machine Learning Engineers",
    "Cybersecurity Experts",
    "UI/UX Designers"
  ].freeze


  def self.ransackable_attributes(auth_object = nil)
    ["city", "country"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
