require 'cgi'

module PayPalCheckoutSdk
    module Subscriptions

      class SubscriptionCreateRequest
        attr_accessor :path, :body, :headers, :verb

        def initialize()
          @headers = {}
          @body = nil
          @verb = "POST"
          @path = "/v1/billing/subscriptions"

          @headers["Content-Type"] = "application/json"
        end

        def request_body(subscriptionActionRequest)
          @body = subscriptionActionRequest
        end
      end
    end
end
