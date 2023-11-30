class User < ApplicationRecord
  validate :user, presence: true
end
