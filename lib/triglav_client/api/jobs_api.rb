=begin
#Triglav API

#Triglav API

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
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Creates or Updates a single job
    # @param job Job parameters
    # @param [Hash] opts the optional parameters
    # @return [JobResponse]
    def create_or_update_job(job, opts = {})
      data, _status_code, _headers = create_or_update_job_with_http_info(job, opts)
      return data
    end

    # 
    # Creates or Updates a single job
    # @param job Job parameters
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobResponse, Fixnum, Hash)>] JobResponse data, response status code and response headers
    def create_or_update_job_with_http_info(job, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi.create_or_update_job ..."
      end
      # verify the required parameter 'job' is set
      fail ArgumentError, "Missing the required parameter 'job' when calling JobsApi.create_or_update_job" if job.nil?
      # resource path
      local_var_path = "/jobs".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(job)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#create_or_update_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Deletes single job
    # @param id_or_uri ID or URI of job to fetch
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_job(id_or_uri, opts = {})
      delete_job_with_http_info(id_or_uri, opts)
      return nil
    end

    # 
    # Deletes single job
    # @param id_or_uri ID or URI of job to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_job_with_http_info(id_or_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi.delete_job ..."
      end
      # verify the required parameter 'id_or_uri' is set
      fail ArgumentError, "Missing the required parameter 'id_or_uri' when calling JobsApi.delete_job" if id_or_uri.nil?
      # resource path
      local_var_path = "/jobs/{id_or_uri}".sub('{format}','json').sub('{' + 'id_or_uri' + '}', id_or_uri.to_s)

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
        @api_client.config.logger.debug "API called: JobsApi#delete_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns a single job
    # @param id_or_uri ID or URI of job to fetch
    # @param [Hash] opts the optional parameters
    # @return [JobResponse]
    def get_job(id_or_uri, opts = {})
      data, _status_code, _headers = get_job_with_http_info(id_or_uri, opts)
      return data
    end

    # 
    # Returns a single job
    # @param id_or_uri ID or URI of job to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobResponse, Fixnum, Hash)>] JobResponse data, response status code and response headers
    def get_job_with_http_info(id_or_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi.get_job ..."
      end
      # verify the required parameter 'id_or_uri' is set
      fail ArgumentError, "Missing the required parameter 'id_or_uri' when calling JobsApi.get_job" if id_or_uri.nil?
      # resource path
      local_var_path = "/jobs/{id_or_uri}".sub('{format}','json').sub('{' + 'id_or_uri' + '}', id_or_uri.to_s)

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
        :return_type => 'JobResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#get_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Returns all jobs
    # @param [Hash] opts the optional parameters
    # @return [Array<JobEachResponse>]
    def list_jobs(opts = {})
      data, _status_code, _headers = list_jobs_with_http_info(opts)
      return data
    end

    # 
    # Returns all jobs
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<JobEachResponse>, Fixnum, Hash)>] Array<JobEachResponse> data, response status code and response headers
    def list_jobs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi.list_jobs ..."
      end
      # resource path
      local_var_path = "/jobs".sub('{format}','json')

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
        :return_type => 'Array<JobEachResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#list_jobs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
