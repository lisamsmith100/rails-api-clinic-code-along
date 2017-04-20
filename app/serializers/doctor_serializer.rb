# frozen_string_literal: true

class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :specialty, :gender
end
