class ApplicationController < ActionController::API
  before_action :require_api_token, if: -> { Rails.env.production? || ENV["NITROUS_API_TOKEN"].present? }

  private

  def require_api_token
    expected = ENV["NITROUS_API_TOKEN"]
    token = request.authorization.to_s[/\ABearer ([^\s]+)\z/i, 1]
    return if expected.present? && token.present? && ActiveSupport::SecurityUtils.secure_compare(token, expected)

    head :unauthorized
  end
end
