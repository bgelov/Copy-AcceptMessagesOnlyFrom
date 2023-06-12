# Copy AcceptMessagesOnlyFrom users between distribution groups in Microsoft Exchange

# Group to
$groupTo = 'mygroup1' 
# Group from
$groupFrom = 'mygroup2' 

$AcceptMessage = (Get-DistributionGroup  $groupFrom | SELECT AcceptMessagesOnlyFrom).AcceptMessagesOnlyFrom
Get-DistributionGroup $groupTo | Set-DistributionGroup -AcceptMessagesOnlyFrom $AcceptMessage
