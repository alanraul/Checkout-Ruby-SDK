require 'cgi'

module PayPalCheckoutSdk
    module Products

      class ProductCreateRequest
        attr_accessor :path, :body, :headers, :verb

        def initialize()
          @headers = {}
          @body = nil
          @verb = "POST"
          @path = "/v1/catalogs/products"

          @headers["Content-Type"] = "application/json"
        end

        def request_body(body)
          @body = body
        end
      end
    end
end
