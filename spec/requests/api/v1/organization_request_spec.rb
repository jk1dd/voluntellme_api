require 'rails_helper'

describe 'Organizations API' do
  it "returns a list of organizations" do
    create_list(:organization, 3)

    get '/api/v1/organizations'

    expect(response).to be_success

    organizations = JSON.parse(response.body)

    expect(organizations.count).to eq(1)
  end
end
