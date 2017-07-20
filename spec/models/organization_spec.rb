require 'rails_helper'

RSpec.describe Organization, type: :model do
  context 'attributes' do
    it 'has name, city, county, state, zip, loc' do
      organization = create(:organization)

      expect(organization).to respond_to(:name)
      expect(organization).to respond_to(:city)
      expect(organization).to respond_to(:county)
      expect(organization).to respond_to(:state)
      expect(organization).to respond_to(:zip)
      expect(organization).to respond_to(:loc)
    end
  end
end
