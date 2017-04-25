# frozen_string_literal: true

class Doctor < ApplicationRecord
  # one-to-many
  has_many :primary_care_recipient, class_name: 'Patient'


  # many-to-many
  has_many :patients, through: :appointments
  has_many :appointments

  # validations
  validates :given_name, presence: true
  validates :family_name, presence: true
end
