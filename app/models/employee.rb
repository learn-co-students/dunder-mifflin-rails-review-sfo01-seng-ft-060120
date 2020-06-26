class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, uniqueness: true
    validates :title, uniqueness: true

    # validates_uniqueness_of :alias, :title
    # validates_presence_of :first_name,:last_name,:alias,:title,:office,:img_url,:dog_id

    def to_s
        "#{self.first_name} #{self.last_name}"
    end
end
