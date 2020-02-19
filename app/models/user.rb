class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable




  def full_name
    [self.first_name, self.last_name].join(' ') #junta os nomes e coloca um espaço no meio com o join
  end
end
