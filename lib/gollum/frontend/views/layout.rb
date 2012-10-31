require 'cgi'

module Precious
  module Views
    class Layout < Mustache
      include Rack::Utils
      alias_method :h, :escape_html

      attr_reader :name, :path

      def escaped_name
        CGI.escape(@name)
      end

      def title
        "Home"
      end

      def has_path
        !@path.nil?
      end

      def base_url
        @base_url
      end

      def user_info
        @user_info || 'Not Logged In'
      end
    end
  end
end
