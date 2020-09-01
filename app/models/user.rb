class User < ApplicationRecord
  after_create :plug_cart

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_one :cart

  def plug_cart
    Cart.create(user_id: self.id)
  end
end
