=begin
#Triglav API

#Triglav API Reference

OpenAPI spec version: 1.0.0
Contact: triglav_admin_my@dena.jp
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'triglav_client/api_client'
require 'triglav_client/api_error'
require 'triglav_client/version'
require 'triglav_client/configuration'

# Models
require 'triglav_client/models/aggregated_resource_each_response'
require 'triglav_client/models/bulkinsert_response'
require 'triglav_client/models/credential'
require 'triglav_client/models/error_model'
require 'triglav_client/models/job_each_response'
require 'triglav_client/models/job_request'
require 'triglav_client/models/job_response'
require 'triglav_client/models/message_each_response'
require 'triglav_client/models/message_fetch_request'
require 'triglav_client/models/message_request'
require 'triglav_client/models/message_response'
require 'triglav_client/models/resource_each_response'
require 'triglav_client/models/resource_request'
require 'triglav_client/models/resource_response'
require 'triglav_client/models/token_response'
require 'triglav_client/models/user_each_response'
require 'triglav_client/models/user_request'
require 'triglav_client/models/user_response'

# APIs
require 'triglav_client/api/auth_api'
require 'triglav_client/api/jobs_api'
require 'triglav_client/api/messages_api'
require 'triglav_client/api/resources_api'
require 'triglav_client/api/users_api'

module TriglavClient
  class << self
    # Customize default settings for the SDK using block.
    #   TriglavClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
