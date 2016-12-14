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
  class ResourcesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Creates a new resource
    # @param resource Resource to add
    # @param [Hash] opts the optional parameters
    # @return [ResourceResponse]
    def create_resource(resource, opts = {})
      data, _status_code, _headers = create_resource_with_http_info(resource, opts)
      return data
    end

    # 
    # Creates a new resource
    # @param resource Resource to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceResponse, Fixnum, Hash)>] ResourceResponse data, response status code and response headers
    def create_resource_with_http_info(resource, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResourcesApi.create_resource ..."
      end
      # verify the required parameter 'resource' is set
      fail ArgumentError, "Missing the required parameter 'resource' when calling ResourcesApi.create_resource" if resource.nil?
      # resource path
      local_var_path = "/resources".sub('{format}','json')

      # query parameters
      query_params = {}

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
      post_body = @api_client.object_to_http_body(resource)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResourceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcesApi#create_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Deletes single resource
    # @param id_or_uri ID or URI of resource to fetch
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_resource(id_or_uri, opts = {})
      delete_resource_with_http_info(id_or_uri, opts)
      return nil
    end

    # 
    # Deletes single resource
    # @param id_or_uri ID or URI of resource to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_resource_with_http_info(id_or_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResourcesApi.delete_resource ..."
      end
      # verify the required parameter 'id_or_uri' is set
      fail ArgumentError, "Missing the required parameter 'id_or_uri' when calling ResourcesApi.delete_resource" if id_or_uri.nil?
      # resource path
      local_var_path = "/resources/{id_or_uri}".sub('{format}','json').sub('{' + 'id_or_uri' + '}', id_or_uri.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcesApi#delete_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns a single resource
    # @param id_or_uri ID or URI of resource to fetch
    # @param [Hash] opts the optional parameters
    # @return [ResourceResponse]
    def get_resource(id_or_uri, opts = {})
      data, _status_code, _headers = get_resource_with_http_info(id_or_uri, opts)
      return data
    end

    # 
    # Returns a single resource
    # @param id_or_uri ID or URI of resource to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceResponse, Fixnum, Hash)>] ResourceResponse data, response status code and response headers
    def get_resource_with_http_info(id_or_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResourcesApi.get_resource ..."
      end
      # verify the required parameter 'id_or_uri' is set
      fail ArgumentError, "Missing the required parameter 'id_or_uri' when calling ResourcesApi.get_resource" if id_or_uri.nil?
      # resource path
      local_var_path = "/resources/{id_or_uri}".sub('{format}','json').sub('{' + 'id_or_uri' + '}', id_or_uri.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'ResourceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcesApi#get_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns aggregated resources to be monitored
    # @param uri_prefix Prefix of Resource URI
    # @param [Hash] opts the optional parameters
    # @return [Array<AggregatedResourceEachResponse>]
    def list_aggregated_resources(uri_prefix, opts = {})
      data, _status_code, _headers = list_aggregated_resources_with_http_info(uri_prefix, opts)
      return data
    end

    # 
    # Returns aggregated resources to be monitored
    # @param uri_prefix Prefix of Resource URI
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AggregatedResourceEachResponse>, Fixnum, Hash)>] Array<AggregatedResourceEachResponse> data, response status code and response headers
    def list_aggregated_resources_with_http_info(uri_prefix, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResourcesApi.list_aggregated_resources ..."
      end
      # verify the required parameter 'uri_prefix' is set
      fail ArgumentError, "Missing the required parameter 'uri_prefix' when calling ResourcesApi.list_aggregated_resources" if uri_prefix.nil?
      # resource path
      local_var_path = "/aggregated_resources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'uri_prefix'] = uri_prefix

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
        :return_type => 'Array<AggregatedResourceEachResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcesApi#list_aggregated_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns all resources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :uri_prefix Prefix of Resource URI
    # @return [Array<ResourceEachResponse>]
    def list_resources(opts = {})
      data, _status_code, _headers = list_resources_with_http_info(opts)
      return data
    end

    # 
    # Returns all resources
    # @param [Hash] opts the optional parameters
    # @option opts [String] :uri_prefix Prefix of Resource URI
    # @return [Array<(Array<ResourceEachResponse>, Fixnum, Hash)>] Array<ResourceEachResponse> data, response status code and response headers
    def list_resources_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResourcesApi.list_resources ..."
      end
      # resource path
      local_var_path = "/resources".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'uri_prefix'] = opts[:'uri_prefix'] if !opts[:'uri_prefix'].nil?

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
        :return_type => 'Array<ResourceEachResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcesApi#list_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Updates a single resource
    # @param id_or_uri ID or URI of resource to fetch
    # @param resource Resource parameters to update
    # @param [Hash] opts the optional parameters
    # @return [ResourceResponse]
    def update_resource(id_or_uri, resource, opts = {})
      data, _status_code, _headers = update_resource_with_http_info(id_or_uri, resource, opts)
      return data
    end

    # 
    # Updates a single resource
    # @param id_or_uri ID or URI of resource to fetch
    # @param resource Resource parameters to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceResponse, Fixnum, Hash)>] ResourceResponse data, response status code and response headers
    def update_resource_with_http_info(id_or_uri, resource, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ResourcesApi.update_resource ..."
      end
      # verify the required parameter 'id_or_uri' is set
      fail ArgumentError, "Missing the required parameter 'id_or_uri' when calling ResourcesApi.update_resource" if id_or_uri.nil?
      # verify the required parameter 'resource' is set
      fail ArgumentError, "Missing the required parameter 'resource' when calling ResourcesApi.update_resource" if resource.nil?
      # resource path
      local_var_path = "/resources/{id_or_uri}".sub('{format}','json').sub('{' + 'id_or_uri' + '}', id_or_uri.to_s)

      # query parameters
      query_params = {}

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
      post_body = @api_client.object_to_http_body(resource)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResourceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourcesApi#update_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
