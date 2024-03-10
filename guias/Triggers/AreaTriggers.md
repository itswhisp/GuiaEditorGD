## Area Move/Rotate/Scale/Fade/Tint
Area Triggers are used to apply different effects to an area of objects. Due to many Area Triggers having the same settings, we will be explaining their general options first and provide specific ones below. Note that Area Triggers are on the more complicated side. Follow along with your own example.

Area Triggers work by taking the center you provide, drawing a circle around the center (or a specific direction depending on what you pick below the "Deadzone" option). This is done using the length you provide and calculating the steps in between. For example, if you have "From Opacity" at 1.00 and "To Opacity" at 0.50, the center will be shown as 1.00 opacity, and the borders will be at 0.50 opacity. All other steps in between will be calculated gradually. For example, right in the middle ("Length"/2), the opacity will be (1.00 + 0.50)/2 = 0.75.

- **Length:** Length in which objects will be affected..
- **Offset:** Offsets the center position in the X direction. The "+/-" is how off it can go. For example, "Offset" at 40 with "+/-" at 10 would offset the center between 3 and 5 blocks.
- **Offset Y:** Offsets the center position in the Y direction. The "+/-" is how off it can go. For example, "Offset" at 40 with "+/-" at 10 would offset the center between 3 and 5 blocks.
- **Deadzone:** Divides the length by the value you set here and changes the transition between center and edge accordingly. For example, having a length of 40 and setting a "Deadzone" of 0.5 would do 0 to 100% between 0 and 20, and stay 100% from 20-40.

![](https://guia.editorgd.xyz/assets/img/figures/88.png)
*Figure 7.22: Example of how the "Deadzone" works.*<br>

- **ModFront/ModBack:** Modify the front and back of your center position. The value you put here is multiplied with your center.
- **Ignore Linked:** Objects linked together will be seen as one object by default. Enabling this object disables this and makes the objects behave as if they are not linked. Note that you have to set an object as Group Parent or Area Trigger for this to work.
- **Ignore GParent:** If you set a Group Parent ID it will be seen as the center of your objects, and all objects will behave exactly like that one. The action also only starts when you are within this object's range. Enabling this option disables the Group Parent ID and makes all blocks behave as if they do not have a Group Parent ID.
- **DE AP:** Stands for "Don't Edit AreaParent". The object that is set as Group Parent ID will not perform any of the area actions.
- **Easing:** The easing the objects have when they start their action.
- **Ease Out:** Allows modifying the easing the objects have when they end their action.
- **Priority:** If several Area Triggers of the same kind are active at once, the one with the higher priority will perform its action.
- **Effect ID:** Specific ID that can be referenced later, for example in Edit Area Triggers.

![](https://guia.editorgd.xyz/assets/img/figures/89.png)
*Figure 7.23: Settings of Area Triggers.*<br>

- **P1:** Player 1.
- **P2:** Player 2.
- **C:** Center of the screen.
- **BL:** Bottom left of the screen.
- **CL:** Left of the screen from the center.
- **TL:** Top left of the screen.
- **BC:** Bottom of the screen from the center.
- **TC:** Top of the screen from the center.
- **BR:** Bottom right of the screen.
- **CR:** Right of the screen from the center.
- **TR:** Top right of the screen.

![](https://guia.editorgd.xyz/assets/img/figures/90.png)
*Figure 7.24: Overview of center options.*<br>

The buttons below the "Deadzone" option indicate what direction the length will be drawn. Here’s a table of all the variations and what their range looks like.

*Table 7.1: Direction settings.*<br>

| ![](https://guia.editorgd.xyz/assets/img/figures/91.png) | ![](https://guia.editorgd.xyz/assets/img/figures/92.png) |
| -------------------------------------------------------- | -------------------------------------------------------- |
| ![](https://guia.editorgd.xyz/assets/img/figures/93.png) | ![](https://guia.editorgd.xyz/assets/img/figures/94.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/95.png) | ![](https://guia.editorgd.xyz/assets/img/figures/96.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/97.png) | ![](https://guia.editorgd.xyz/assets/img/figures/98.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/99.png) | ![](https://guia.editorgd.xyz/assets/img/figures/100.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/101.png) | ![](https://guia.editorgd.xyz/assets/img/figures/102.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/103.png) | ![](https://guia.editorgd.xyz/assets/img/figures/104.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/105.png) | ![](https://guia.editorgd.xyz/assets/img/figures/106.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/107.png) | ![](https://guia.editorgd.xyz/assets/img/figures/108.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/109.png) | ![](https://guia.editorgd.xyz/assets/img/figures/110.png) |

For Area Move, we have these unique settings:

- **MoveDist:** Distance the objects move.
- **MoveAngle:** Angle in which objects move. 0 is up, 90 right, 180 down, 270 left, and so on.
- **Relative:** Moves away in angle depending on where the center is. If the center is above the object, it will move down. If it is to the right, it will move left, and so on.
- **RFade:** Fade when using "Relative". Basically distance ratio between objects. 0 means a big gap, and the higher the number the smaller the gap ratio.
- **XY Mode:** You can enter X and Y values like in the normal Move Trigger instead of choosing a direction.

For Area Rotate, we have these unique settings:

- **Rotation:** The degrees you want the objects to rotate. Enter a positive value to rotate clockwise, and a negative value to rotate counter-clockwise.

For Area Scale, we have these unique settings:

- **ScaleX/ScaleY:** The size the objects scale in the X-axis and Y-axis respectively.

For Area Fade, we have these unique settings:

- **From Opacity:** The opacity the objects closest to the center have.
- **To Opacity:** The opacity the objects furthest from the center have.

For Area Tint, we have these unique settings:

- **Color Channel:** The color you want to tint the objects in.
- **%:** The percentage you want to tint the color. For example, if you want to tint a black object white and set "%" to 0.5, the object will turn gray.
- **Main Only and Secondary Only**: Some objects have a Base Color and Detail Color, which is seen in the "Edit Object" menu. These options only change the these colors respectively.
- **HSV:** Instead of tinting the color of a different Color Channel, you can simply tint the same Color Channel and change the "HSV" values of it.