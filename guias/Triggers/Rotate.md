# Rotate
This Trigger is used to rotate a specific Group ID. Its interface is seen below. After that, each option is described

![](https://guia.jorge603.xyz/assets/img/figures/74.png)
*Figure 7.10: The Rotate Trigger.*

- **Target Group ID:** The objects you want to rotate.
- **Center Group ID:** The center the objects should rotate around. This Group
ID can only consist of a single object. Leaving this as 0 will result in all
objects rotating around their own center.
- **Move Time:** The duration you want the rotation to last.
- **Degrees:** How many degrees you want the objects to rotate. Enter a
negative value to rotate counter-clockwise and enter a positive value to
rotate clockwise.
- **x360:** How many full rotations (360 degrees) you want to do. Enter a
negative value to rotate counter-clockwise and enter a positive value to
rotate clockwise.

![](https://guia.jorge603.xyz/assets/img/figures/75.png)
*Figure 7.11: The interface when "Aim Mode" is enabled.*

- **Aim Mode:** The objects will face towards the "Rot Target ID". This must be a Group ID with a single object. You can offset the rotation with "Rot Offset". Choosing "P1" or "P2" will make the objects face towards Player 1 and Player 2 respectively. If this is enabled, you can limit the rotation to be between objects set on the second page of the Trigger.
- **Follow Mode:** The objects will follow the rotation of "Rot Target ID". This must be a Group ID with a single object. You can offset the rotation with "Rot Offset". Choosing "P1" or "P2" will make the objects face towards Player 1 and Player 2 respectively. The second page of the overall Trigger lets you set Group IDs of single objects as boundaries for following. This means that the rotation will not continue to follow the target if it reaches these positions.

![](https://guia.jorge603.xyz/assets/img/figures/76.png)
![](https://guia.jorge603.xyz/assets/img/figures/77.png)
![](https://guia.jorge603.xyz/assets/img/figures/78.png)
*Figure 7.12: Comparision between normal rotation, "Aim Mode", and "Follow Mode" respectively.*

- **Dynamic Mode:** This option checks if the target moves when in "Aim Mode" or "Follow Mode". Normally the Trigger will only check upon activation where the target is and face towards that direction. Moving the Target Group ID does not update the direction. With "Dynamic Mode" enabled, it will update its direction based on the target moving.
- **Lock Obj Rotation:** The objects themselves will not rotate but instead only update their position.