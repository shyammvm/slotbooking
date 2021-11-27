class User < ApplicationRecord
    has_secure_password

    validates :email, presence:true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
    validates :name, presence:true
    validates :password, presence: true
    validates :designation, presence:true
    validates :phone, presence:true
    validates :role, presence:true
end 
