require 'cgi'

module PayPalCheckoutSdk
    module Subscriptions

      class PlanListRequest
        attr_accessor :path, :body, :headers, :verb

        def initialize()
          @headers = {}
          @body = nil
          @verb = "GET"
          @path = "/v1/billing/plans"

          @headers["Content-Type"] = "application/json"
        end
      end
    end
end
