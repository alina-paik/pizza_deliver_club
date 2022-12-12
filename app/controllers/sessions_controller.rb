class SessionsController < ApplicationController
  def current_session
    @session
    render json: @session
  end
end
