Get-UcsBlade | select Name,ChassisID,SlotID,Serial,Ucs,Model,OriginalUuid,PartNumber,TotalMemory,MemorySpeed,NumOfCpus,NumOfCores,NumOfEthHostIfs,NumOfFcHostIfs  | Export-Csv C:\temp\UCS.csv
Get-UcsVlan | select Name,Rn,Id,IfRole,IfType | Export-Csv C:\temp\UCSnetwork.csv
Get-UcsVhba | select Name, Type, Dn,IdentPoolName,bootDev,OperAdaptorProfileName | Export-Csv C:\temp\UCSStorage.csv