# TriglavClient::ResourceRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** |  | [optional] 
**uri** | **String** | URI of Resource | 
**unit** | **String** | Time unit of resource to monitor such as daily, or hourly | 
**timezone** | **String** | Timezone of resource time, that is, timezone of %Y-%m-%d for hdfs://path/to/%Y-%m-%d such as +09:00 | [optional] 
**span_in_days** | **Integer** | Time span of resource to monitor. default is 32 for daily, 32*24 (32 days) for hourly | [optional] 
**consumable** | **BOOLEAN** | True if this resource should be consumed | [optional] 
**notifiable** | **BOOLEAN** | True if this resource should be notified, that is, monitor agent is not necessary | [optional] 


