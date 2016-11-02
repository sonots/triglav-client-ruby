# TriglavClient::ResourceResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**description** | **String** |  | [optional] 
**uri** | **String** | URI of Resource | 
**unit** | **String** | Time unit of resource to monitor such as daily, or hourly | [optional] 
**timezone** | **String** | Timezone of resource time, that is, timezone of %Y-%m-%d for hdfs://path/to/%Y-%m-%d such as +09:00 | [optional] 
**span_in_days** | **Integer** | Time span of resource to monitor, default is 32 | [optional] 
**consumable** | **BOOLEAN** | True if this resource should be consumed. Input resources are automatically set to true, and output resources are set to false | [optional] 
**notifiable** | **BOOLEAN** | True if a job notifies its end of task to triglav for this resource, that is, monitoring in agent is not necessary | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 


