class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         belongs_to :company, optional: true
         belongs_to :role, optional: true
         belongs_to :ticket, optional: true
end 