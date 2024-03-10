## Teleport
Teleports the player to a set location.

![](https://guia.jorge603.xyz/assets/img/figures/132.png)
*Figure 7.38: The Teleport Trigger.*<br>

- **Target GroupID:** The Group ID the player teleports to. The Group ID can only consist of one object.
- **Gravity:** The gravity the player should have after finishing the teleportation.
- **Normal:** Normal gravity after teleporting.
- **Flipped:** Flipped gravity after teleporting.
- **Toggle:** The gravity flips to the opposite, depending on what gravity you are when teleporting. You flip from normal to flipped and from flipped to normal.
- **Smooth Ease:** The camera follows smoothly to the new position of the player.
- **Save Offset:** The offset the player has to the Trigger center when activating it is saved and applied to the target object, resulting in a slightly offset teleport.
- **Ignore X/Ignore Y:** Does not teleport on the X-axis or Y-axis respectively.
- **Instant Camera:** The camera instantly snaps to the new position.
- **Snap Ground:** The Ground snaps to the new position.
- **Redirect Dash:** Rotates Dash Orb effect to match teleport exit rotation.
Only for Platformer levels.
- **Static Force:** You exit the rotation based on the rotation of the target, with
a force applied.
- **Force:** The force the player should have when exiting the teleport. The force is applied in the direction of the target object rotation.
- **Redirect Force:** The force the player should have when exiting the teleport. The force is applied in the direction of the target object rotation and an input force.
- **Min/Max:** Limits the exit force. If you leave this value at 0, no limit will be set.
- **Mod:** Modifies the input force value. The speed you have will be this value multiplied with the speed you have when teleporting.