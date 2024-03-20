## Move
This Trigger is used to move a specific Group ID. Its interface is seen below. After that, each option is described.

![](https://guia.editorgd.xyz/assets/img/figures/65.png)
*Figure 7.2: The Move Trigger.*<br>

- **Target Group ID:** The Group ID you want to move.
- **Move X:** Moves blocks along the X-axis. One block is equal to a value of 10. Input a positive number to move to the right, and a negative one to move to the left.
- **Move Y:** Moves blocks along the Y-axis. One block is equal to a value of 10. Input a positive number to move up, and a negative one to move down.
- **Move Time:** The duration you want the movement to last.
- **Easing:** Easing options change the way the objects start and end their movement.
- **Player:** You can select a "Player" option for both the X-axis and Y-axis. When this option is selected, the objects will follow the player's movement in the given direction.
- **Camera:** The "Camera" option can also be selected for both the X-axis and Y-axis. It functions similarly to the "Player" option, but follows the screen movement instead of the player movement.

![](https://guia.editorgd.xyz/assets/img/figures/66.png)
*Figure 7.3: Interface when "Target Mode" is toggled.*<br>

- **Target Mode:** Moves the objects to a "Target Group ID". This must be a single object. "Center Group ID" declares the center of the objects you want to move. This must also consist of a single object only. Selecting "P1" or "P2" declares Player 1 or 2, in Dual Mode, respectively as "Target Group" and moves the objects to that player's location instead.
- **Direction Mode:** Moves the objects in the direction of a "Target Group ID". This must be a single object. "Center Group ID" declares the center of the objects you want to move. This must also be a single object. Selecting "P1" or "P2" declares Player 1 or 2, in Dual Mode, respectively as "Target Group" and moves the objects to that player's location instead. "Distance" indicates how far in the direction the objects move. As before, one block is equal to a value of 10.

![](https://guia.editorgd.xyz/assets/img/figures/67.png)
![](https://guia.editorgd.xyz/assets/img/figures/68.png)
*Figure 7.4: Comparision between "Target Mode" and "Direction Mode" respectively.*<br>

- **Small Step:** Enabling this option changes the value for one block from 10 to 30. This improves accuracy and allows for more precise movements.
- **Dynamic Mode:** This option checks if the "Target Group ID" moves when in "Target Mode" or "Direction Mode". Normally the Trigger will only check upon activation where the target is and move towards that direction. With "Dynamic Mode" enabled, it will update its direction based on the target moving.
- **Silent:** In Platformer mode, the player sticks to solid blocks that move instantly. With this option enabled, blocks move instantly without the player following their movement.
