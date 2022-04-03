# frozen_string_literal: true

class Message < ApplicationRecord
    MAX_LENGTH = 1000
    before_save proc { raise "Maximum length of #{MAX_LENGTH} exceeded" if original_content.length > MAX_LENGTH }
    
    def encrypt
        encrypter.encrypt!
    end

    def encrypter
        Encrypter::ROT13.new(original_content)
    end
end
