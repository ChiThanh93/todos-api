class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  skip_before_action :authorize_request, only: :authenticate
  before_action :authorize_request
  attr_header :current_user

  private

  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)
  end
end
