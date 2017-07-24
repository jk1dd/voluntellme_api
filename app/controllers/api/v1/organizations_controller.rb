class Api::V1::OrganizationsController < ApplicationController
  def index
    render json: Organization.select('distinct ON (name) *')
  end
end
