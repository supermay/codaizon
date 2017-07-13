class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_one :cart

  def has_profile?
    profile.present? && profile.persisted?
  end

  def full_name
    profile.full_name
  end
end
