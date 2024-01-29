# Count
Count Triggers are used to enable, disable, or spawn a Group ID when an Item ID reaches a specific number. Count IDs can be activated at any time when that number is reached, as opposed to Instant Count Triggers which only check if the condition is met when the Trigger is hit.

- **Item ID:** The Item ID you want to check the value for. Place the "0" object and click "Edit Special" to configure a unique Item ID.
- **Target Count:** The number the Item ID needs to have to activate the Group ID.
- **Target ID:** The Group ID which should be enabled, disabled, or spawned when the Item ID reaches the "Target Count".
- **Activate Group:** Enable this option to enable a Group ID, or to spawn a Group ID. By default, the Group ID will be disabled when the count is reached. Reaching the count again does not reactivate the Group ID, and Triggers are only spawned if this option is enabled.
- **Multi Activate:** Allows the Group ID to be enabled, disabled, or spawned again when the "Target Count" is reached several times. By default, the action will only be performed once.