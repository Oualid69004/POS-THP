class User < ApplicationRecord
  after_create :welcome_send, :user_stock
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, :last_name, :presence => true




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :company, optional: true
         belongs_to :role, optional: true
         belongs_to :ticket, optional: true
         belongs_to :memory, optional: true
         belongs_to :memory_sale, optional: true

  private

  def welcome_send
   UserMailer.welcome_email(self).deliver_now
  end

  def user_stock
    memory = Memory.create(user: self)
    memory_sales = MemorySale.create(user: self)
    self.update(
      memory: memory,
      memory_sale: memory_sales
    )
  end

end
