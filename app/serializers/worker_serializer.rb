class WorkerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :phone, :job_type, :location
end
