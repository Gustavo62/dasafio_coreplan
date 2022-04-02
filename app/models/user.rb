class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar, dependent: :destroy
  def self.consultaUsuarioNome(nome)
    if nome.present?
      where("nome LIKE ? ","%#{nome}%")
    else
      all
    end
  end
end
