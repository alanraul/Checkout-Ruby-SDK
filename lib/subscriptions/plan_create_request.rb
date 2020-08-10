require 'cgi'

module PayPalCheckoutSdk
    module Subscriptions

      class PlanCreateRequest
        attr_accessor :path, :body, :headers, :verb

        def initialize()
          @headers = {}
          @body = nil
          @verb = "POST"
          @path = "/v1/billing/plans"

          @headers["Content-Type"] = "application/json"
        end

        def request_body(subscriptionActionRequest)
          @body = subscriptionActionRequest
        end
      end
    end
end
