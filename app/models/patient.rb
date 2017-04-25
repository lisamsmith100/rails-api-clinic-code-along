class Patient < ApplicationRecord
  belongs_to :doctor

  validates :born_on, presence: true
  validates :name, presence: true
end
