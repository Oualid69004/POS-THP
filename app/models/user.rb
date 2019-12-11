class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, :last_name, :presence => true, :on => :save
  validates :email, :encrypted_password, :confirmation => true, :uniqueness => true
 



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :company, optional: true
         belongs_to :role, optional: true
         belongs_to :ticket, optional: true
         belongs_to :memory, optional: true
         belongs_to :memory_sale, optional: true

  after_create :welcome_send , :welcome_send_employee

  def welcome_send
   UserMailer.welcome_email(self).deliver_now
  end


  def welcome_send_employee
   UserMailer.welcome_employee(self).deliver_now
  end

end
