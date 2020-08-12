require 'cgi'

module PayPalCheckoutSdk
    module Subscriptions

      class SubscriptionPatchRequest
        attr_accessor :path, :body, :headers, :verb

        def initialize(id)
          @headers = {}
          @body = nil
          @verb = "PATCH"
          @path = "/v1/billing/subscriptions/{id}"

          @headers["Content-Type"] = "application/json"
        end

        def request_body(body)
          @body = body
        end
      end
    end
end
