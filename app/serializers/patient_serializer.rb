class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :diagnosis, :doctor_id
end
