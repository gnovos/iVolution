class DevicesController < ApplicationController
  respond_to :json
  inherit_resources

  def show
    @device = Device.find_by_identifier(params['id'])
    @device ||= Device.create!(identifier:params['id'])

    show!
  end
end
