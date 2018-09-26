class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  belongs_to :role, optional: true #optional: true corrige el error de Role must exits
  #before_create :set_default_role
  # or 
  before_validation :set_default_role 
       
  private
  def set_default_role
    self.role ||= Role.find_by_name('user')
  end
end


