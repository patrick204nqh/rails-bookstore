module Erp
  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    has_many :orders, class_name: "Erp::Order"
    scope :all_except, ->(user) { where.not(id: user).order('created_at DESC').limit(6) }
  end
end
