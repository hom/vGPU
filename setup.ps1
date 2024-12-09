# 虚拟机的名称
$vm = "Windows 10 LTSC 2021"
# 添加挂载点
Add-VMGpuPartitionAdapter -VMName $vm
# 设置设置适配器
Set-VMGpuPartitionAdapter -VMName $vm -MinPartitionVRAM 80000000 -MaxPartitionVRAM 100000000 -OptimalPartitionVRAM 100000000 -MinPartitionEncode 80000000 
# 设置控制器
Set-VM -GuestControlledCacheTypes $true -VMName $vm
# 设置内存地址
Set-VM -LowMemoryMappedIoSpace 1Gb -VMName $vm
Set-VM -HighMemoryMappedIoSpace 32GB -VMName $vm