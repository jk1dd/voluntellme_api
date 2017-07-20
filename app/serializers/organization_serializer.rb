class OrganizationSerializer < ActiveModel::Serializer
  attributes :name, :city, :county, :state, :zip, :loc
end
