class Pet < ApplicationRecord
  belongs_to :user
  #has_many :images, as: :imageable  #imageable se utiliza para trabajar con polimorfismo
  has_many_attached :images #este es para trabajar con active storage
  has_many :matches

  #accepts_nested_attributes_for :images
end
