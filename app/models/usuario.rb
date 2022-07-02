class Usuario < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true
  validates :age, presence: true
  validates :age, numericality: {only_integer: true, 
    greater_than: 10, less_than: 150
  }
  validates_length_of :first_name, minimum: 2
  validates_length_of :last_name, minimum: 2
end
