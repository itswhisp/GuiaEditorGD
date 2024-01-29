# Follow Player Y
Follow Player Y Triggers are used to make objects follow the Y movement of the player. The movement can be modified by using the different options explained below

- **Target Group ID:** The objects you want to follow the player's Y movement.
- **Move Time:** How long you want the objects to follow the player's Y movement.
- **Speed:** Modifies the speed the object has when following the movement of the player. The value you put here will be multiplied with the player movement. For example, if the player moves 5 blocks per second and you put 0.5, the objects will move 2.5 blocks per second.
- **Delay:** Delay before the objects follow the movement.
- **Offset:** Offsets the objects. Normally the objects will snap to the exact Y position. A value of 10 is equal to one block offset above the player. Enter a negative value to offset below the player.
- **Max Speed:** The maximum speed the objects can reach when following the movement. The formula used to calculate the speed is (Max Speed/(Max Speed + 1)). Thus, if you put 5.0 for "Max Speed", for example, the objects will do 5/6 of the movement the player did in the same time.