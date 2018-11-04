class User < ApplicationRecord
  has_many :books
  # # Include default devise modules.
  # devise :database_authenticatable, :registerable,
  #   :recoverable, :rememberable, :trackable, :validatable,
  #   :confirmable, :omniauthable
  #   include DeviseTokenAuth::Concerns::User

  # devise :database_authenticatable, :registerable, :omniauthable
  include DeviseTokenAuth::Concerns::User

end
