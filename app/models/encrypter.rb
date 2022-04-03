# frozen_string_literal: true

module Encrypter
    class Base
        def initialize(message)
            @message = message
        end

        def encrypt!
            raise NoImplementedError, "#{self.class} has not implemented method '#{__method__}'"
        end
    end

    class ROT13 < Base
        def encrypt!
            @message.tr('A-Za-z', 'N-ZA-Mn-za-m')
        end
    end
end

