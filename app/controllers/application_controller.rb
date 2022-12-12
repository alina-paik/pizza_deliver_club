class ApplicationController < ActionController::API
  before_action :authenticate
  SECRET = 'SECRET_KEY'
  def authenticate
      if request.cookies['session'].nil?
        payload = {language: "UA"}
        token = encode_user_data(payload)
      response.set_cookie(
        :session,
        value: token,
        expires: 1.year.from_now,
        secure: Rails.env.production?,
        httponly: Rails.env.production?
      )
      @session = payload
      else
        @session = decode_user_data(request.cookies['session']).first
      end
    end

    def encode_user_data(payload)
      JWT.encode payload, SECRET, 'HS256'
    end

    def decode_user_data(token)
      JWT.decode token, SECRET, true, algorithm: 'HS256'
    rescue StandardError => e
      puts e
    end
end
