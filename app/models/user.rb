class User < ApplicationRecord
	validates :name, presence: true
	validates :first_name, presence: true
	validates :adress, presence: true 
	validates :city, presence: true
	validates :zipcode, presence: true, length: { :is 6 }
	validates :phone, presence: true, length: { :is 10 }
	validates :email, presence: true,
	uniqueness: true,
	format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: " : Veuillez utiliser un mot de passde valide" }

	has_one :question
end
