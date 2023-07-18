class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  enum :role, [:normal, :ejecutivo, :admin]

  has_many :pets
  #has_many :images, as: :imageable  #imageable se utiliza para trabajar con polimorfismo
  has_many_attached :images  #este es para trabajar con active storage
  has_many :matches

  #accepts_nested_attributes_for :images
  
end
