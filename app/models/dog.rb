class Dog < ApplicationRecord
    has_many :employees

    def to_s
        "#{self.name} - #{self.breed} - #{self.age}"
    end
end
