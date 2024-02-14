## Time
Time Triggers function as an in-game Timer. In-game Timers use Item IDs to work.

- **StartTime/StopTime:** The time you want the Timer to start and stop at respectively. Note that you have to enable the checkbox to the right of "StopTime" for the time to actually stop. If"StopTime" is lower than "StartTime", "StopTime" will be ignored.
- **ItemID:** The Item ID you want to use as a Timer. Place the "0" object and click "Edit Special" to configure a unique Item ID. Note that you have to set the Item ID to "Time Counter" in the "Edit Special" page of the Item ID for this Trigger to work.
- **TargetID:** The Group ID you want to spawn when "StopTime" is hit. Note that you actually have to stop the time at the "StopTime" to enable the Group ID. In other words, you have to enable the checkbox to the right of the "StopTime" option.
- **TimeMod:** Modifies the Timer. The number you input here will be multiplied with the normal Timer, resulting in the time going quicker if the value is above 1 and slower if it is below 1.
- **Ignore TimeWarp:** Using a TimeWarp Trigger will also slow down or speed up the Timer. Enabling this option makes the time behave the same. 102
- **StartPaused:** The Timer will display your "StartTime", but it will not start until activated by a different Time Trigger or a Time Control Trigger.
- **Dont Override:** Time Triggers with this option enabled will only affect the Timer if it is at 0.00 or has the "StartPaused" option enabled. If the Timer is currently counting, the Triggers will not change the value.