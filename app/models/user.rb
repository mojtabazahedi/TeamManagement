class User < ApplicationRecord
    has_secure_password

    def self.authenticate(email, password)
        user = find_by_email(email)
        return user if user && user.authenticate(password)
    end
end
