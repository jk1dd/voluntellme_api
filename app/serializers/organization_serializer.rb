class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :county, :state, :zip, :loc
end
