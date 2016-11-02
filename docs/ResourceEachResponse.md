# TriglavClient::ResourceEachResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | resource uri | [optional] 
**unit** | **String** | &#39;daily&#39; or &#39;hourly&#39; | [optional] 
**timezone** | **String** | timezone of the format [+-]HH:MM | [optional] 
**span_in_days** | **Integer** | span in days | [optional] 
**consumable** | **BOOLEAN** | True if this resource should be consumed | [optional] 
**notifiable** | **BOOLEAN** | True if a job notifies its end of task to triglav for this resource, that is, monitoring in agent is not necessary | [optional] 


