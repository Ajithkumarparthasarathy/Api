class Student < ApplicationRecord
    validates :name, presence: true
    validates :class, presence: true
    validates :roll_no, presence: true
end
