################################################################
# Listing 14.1: Resource limits and reservations
################################################################
$report=@()
foreach ($vm in Get-VM | Get-VMResourceConfiguration) {
  if (($vm.CpuReservationMhz -ne '0') -or
    ($vm.CpuLimitMhz -ne '-1') -or
    ($vm.MemReservationMB -ne '0') -or
    ($vm.MemLimitMB -ne '-1')) {
    $Report += $vm
  }
}
$report | Format-Table