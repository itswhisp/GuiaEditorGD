# Instant Count
Instant Count Triggers are used to are used to enable, disable, or spawn a Group ID if an Item ID is equal, smaller, or larger than a specific number. Instant Count Triggers only check if the condition is met when they are hit and never again afterwards, as opposed to Count Triggers which check for their condition constantly.

- **Item ID:** The Item ID you want to check the value for. Place the "0" object and click "Edit Special" to configure a unique Item ID.
- **Target Count:** The number the Item ID needs to have to activate the Group ID.
- **Target ID:** The Group ID which should be enabled, disabled, or spawned when the Item ID reaches the "Target Count".
- **Activate Group:** Enable this option to enable a Group ID, or to spawn a Group ID. By default, the Group ID will be disabled when the count is reached. Reaching the count again does not reactivate the Group ID, and Triggers are only spawned if this option is enabled.
- **Equals/Larger/Smaller:** This option will trigger "Target ID" if the Item ID is equal, larger, or smaller respectively when the Trigger is reached