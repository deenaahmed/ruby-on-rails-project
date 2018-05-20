class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         enum gender: {male: 0, female: 1} 
         has_many :courses
         has_and_belongs_to_many :lectures
         acts_as_commontator
end
