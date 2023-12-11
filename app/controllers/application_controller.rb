class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name avatar])
  end

  def authenticate_user
    token = request.headers['Authorization']&.split&.last

    unless token
      render json: { error: 'Unauthorized' }, status: :unauthorized
      return
    end

    begin
      secret_key = Rails.application.credentials.devise_jwt_secret_key
      JWT.decode(token, secret_key, true)
    rescue JWT::DecodeError
      render json: { error: 'Invalid token' }, status: :unauthorized
    end
  end
end
