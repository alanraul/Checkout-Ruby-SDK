require 'cgi'

module PayPalCheckoutSdk
    module Products

      class ProductListRequest
        attr_accessor :path, :body, :headers, :verb

        def initialize()
          @headers = {}
          @body = nil
          @verb = "GET"
          @path = "/v1/catalogs/products?page_size=2&page=1&total_required=true"

          @headers["Content-Type"] = "application/json"
        end
      end
    end
end
