## Sequence
The Sequence Trigger is used to spawn a sequence of Triggers. Every time the Trigger is triggered, it will advance one step further in the sequence.

![](https://guia.jorge603.xyz/assets/img/figures/117.png)
*Figure 7.31: The Sequence Trigger.*<br>

- **GroupID/Count:** The Group ID you want to spawn, with "Count" being how often you want to spawn it.
- **MinInt:** Minimum interval that has to pass before you can activate the next step in the sequence.
- **Reset:** If set to 0, this option is ignored. If the Trigger is not triggered for the duration you input here, it will stop the sequence and start from the beginning again the next time you use it.
- **Mode Stop:** The sequence stops once you reach the end.
- **Mode Loop:** The sequence starts from the beginning again after you reach the end.
- **Mode Last:** The sequence will finish like normal, and after hitting the Trigger again, only the last Group ID will be triggered every time.
- **Reset Full:** If the Trigger has not been triggered for the "Reset" time, the Trigger will return to the first Group ID in the sequence.
- **Reset Step:** If the Trigger has not been triggered for the "Reset" time, the sequence will go back to the Group ID before the current one

For example, let us say you have a sequence of Group IDs 1, 2, 3, and 4, and use "Reset Step" with a "Reset" time of 1 second. You trigger the first 4 sequences. If you do not activate the Trigger for 1 second, it will trigger Group ID 3. If you do not activate the Trigger for 2 seconds, it will trigger Group ID 2.