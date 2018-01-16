module Igdb
  module Exception
    class Base < RuntimeError
      def initialize(message)
        super(message)
      end
    end

    class Api < Base; end
    class ArgumentError < Base; end
    class JsonParseError < Base; end
  end
end
