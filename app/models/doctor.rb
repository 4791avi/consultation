class Doctor < ApplicationRecord
  validates :name, :presence => true, length:{maximum: 255}
  validates :phone_no,:presence => true,numericality: true, length:{minimum: 10, maximum: 12}
  validates :specialization, :presence => true, length:{maximum: 255}
end
