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

require "uri"

module TriglavClient
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Fetches messages
    # @param offset Offset (Greater than or equal to) ID for Messages to fetch from
    # @param resource_uri URI of Resource
    # @param [Hash] opts the optional parameters
    # @return [Array<MessageEachResponse>]
    def fetch_messages(offset, resource_uri, opts = {})
      data, _status_code, _headers = fetch_messages_with_http_info(offset, resource_uri, opts)
      return data
    end

    # 
    # Fetches messages
    # @param offset Offset (Greater than or equal to) ID for Messages to fetch from
    # @param resource_uri URI of Resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MessageEachResponse>, Fixnum, Hash)>] Array<MessageEachResponse> data, response status code and response headers
    def fetch_messages_with_http_info(offset, resource_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagesApi.fetch_messages ..."
      end
      # verify the required parameter 'offset' is set
      fail ArgumentError, "Missing the required parameter 'offset' when calling MessagesApi.fetch_messages" if offset.nil?
      # verify the required parameter 'resource_uri' is set
      fail ArgumentError, "Missing the required parameter 'resource_uri' when calling MessagesApi.fetch_messages" if resource_uri.nil?
      # resource path
      local_var_path = "/messages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'offset'] = offset
      query_params[:'resource_uri'] = resource_uri

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<MessageEachResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#fetch_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Enqueues a new message
    # @param resource_uri URI of Resource
    # @param resource_unit Unit of Resource
    # @param resource_time Resource Time
    # @param resource_timezone Timezone of Resource Time
    # @param message Message to add
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def send_message(resource_uri, resource_unit, resource_time, resource_timezone, message, opts = {})
      data, _status_code, _headers = send_message_with_http_info(resource_uri, resource_unit, resource_time, resource_timezone, message, opts)
      return data
    end

    # 
    # Enqueues a new message
    # @param resource_uri URI of Resource
    # @param resource_unit Unit of Resource
    # @param resource_time Resource Time
    # @param resource_timezone Timezone of Resource Time
    # @param message Message to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Fixnum, Hash)>] MessageResponse data, response status code and response headers
    def send_message_with_http_info(resource_uri, resource_unit, resource_time, resource_timezone, message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagesApi.send_message ..."
      end
      # verify the required parameter 'resource_uri' is set
      fail ArgumentError, "Missing the required parameter 'resource_uri' when calling MessagesApi.send_message" if resource_uri.nil?
      # verify the required parameter 'resource_unit' is set
      fail ArgumentError, "Missing the required parameter 'resource_unit' when calling MessagesApi.send_message" if resource_unit.nil?
      # verify the required parameter 'resource_time' is set
      fail ArgumentError, "Missing the required parameter 'resource_time' when calling MessagesApi.send_message" if resource_time.nil?
      # verify the required parameter 'resource_timezone' is set
      fail ArgumentError, "Missing the required parameter 'resource_timezone' when calling MessagesApi.send_message" if resource_timezone.nil?
      # verify the required parameter 'message' is set
      fail ArgumentError, "Missing the required parameter 'message' when calling MessagesApi.send_message" if message.nil?
      # resource path
      local_var_path = "/messages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'resource_uri'] = resource_uri
      query_params[:'resource_unit'] = resource_unit
      query_params[:'resource_time'] = resource_time
      query_params[:'resource_timezone'] = resource_timezone

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(message)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#send_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
