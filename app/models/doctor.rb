class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destory
  has_many :users, through: :appointments
end
