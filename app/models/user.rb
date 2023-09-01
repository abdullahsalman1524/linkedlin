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
end
