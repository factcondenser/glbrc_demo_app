class User < ApplicationRecord
  has_many :links
  has_many :applications, through: :links

  attr_accessor	:remember_token
  # Class methods (idiomatically correct, if confusing)
	class << self
		# Returns the hash digest b of the given string.
		def digest(string)
			cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
			BCrypt::Password.create(string, cost: cost)
		end

		# Returns a random token.
		def new_token
			SecureRandom.urlsafe_base64
		end
	end

  # Instance methods
	# Remembers a user in the database for use in persistent sessions.
	def remember
		self.remember_token = User.new_token
		update_attribute(:remember_digest, User.digest(remember_token))
	end

	# Returns true if the given token matches the digest (generalized; 11.3.1)
	def authenticated?(attribute, token)
		digest = self.send("#{attribute}_digest")
		return false if digest.nil?
		BCrypt::Password.new(digest).is_password?(token)
	end

  def add_to_home(app_id)
    self.applications << Application.find(app_id)
  end

  def remove_from_home(link_id)
    self.links.destroy(link_id)
  end

  def has_on_home?(app_id)
    app = Application.find(app_id)
    self.applications.include?(app)
  end

end
