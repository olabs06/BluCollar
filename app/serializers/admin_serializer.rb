class AdminSerializer < ActiveModel::Serializer
  attributes :id, :is_admin, :user_id, :worker_id
end
