module Erp
  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    has_many :orders, class_name: "Erp::Order"
    scope :all_except, ->(user) { where.not(id: user).order('created_at DESC').limit(6) }
    mount_uploader :avatar, Erp::AvatarUploader
    # validates_processing_of :avatar
    # validate :avatar_size_validation

    # private
    #   def avatar_size_validation
    #     errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    #   end
  end
end
