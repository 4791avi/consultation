class Appointment < ApplicationRecord
    validates :doc_name, :presence => true, length:{maximum: 255}
    validates :pat_name, :presence => true, length:{maximum: 255}
    validates :diseases, :presence => true, length:{maximum: 255}
end
