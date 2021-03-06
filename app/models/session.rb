class Session < ActiveRecord::Base

  before_create :set_auth_token

  private

  # Equals a Token with a generate token to save
  def set_auth_token
    return if auth_token.present?
    self.auth_token = generate_auth_token
  end

  # Generate a unique token
  def generate_auth_token
    SecureRandom.uuid.gsub(/\-/,'')
  end


end
