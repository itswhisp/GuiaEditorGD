## Move/Rotate/Scale/Fade/Tint Enter
Lets you create custom Enter Effects, similar to the default ones above. Due to these having many of the same settings, we will be explaining them all first and only mention specific ones below. Note that one block is equal to 30 for all of these.

![](https://guia.editorgd.xyz/assets/img/figures/168.png)
*Figure 7.42: Custom Enter Effect example.*<br>

- **Length:** Distance from the screen borders where the effect is applied.
- **Offset:** Offsets the screen borders. Enter a positive value to offset it to the right, and a negative value to offset it to the left.
- **Enter Channel:** Used similarly to Group IDs. The objects you want to have the Enter Effect can be set with "Enter Channel" under "Extra2" in "Edit Group".
- **Effect ID:** Specific ID that can be referenced later, for example in Stop Enter Effect Triggers.
- **Enter Only/Exit Only:** The effect is only applied on screen entrance or exit respectively.
- **Easing:** Modifies how the objects start and end their transitions.

For Move Enter, we have these unique settings:
- **MoveDist:** Distance the objects move.
- **MoveAngle:** Angle at which the objects will move. 0 is up, 90 right, 180 down, 270 left, and so on.
- **XY Mode:** You can enter X and Y values like in the normal Move Trigger instead of choosing a direction.

For Rotate Enter, we have these unique settings:
- **Rotation:** The degrees you want the objects to rotate. Enter a positive value to rotate clockwise, and enter a negative value to rotate counter-clockwise.

For Scale Enter, we have these unique settings:
- **ScaleX/ScaleY:** The size the objects scale in the X-axis and Y-axis respectively.

For Fade Enter, we have these unique settings:
- **Opacity:** The opacity the objects will fade to when they are near the screen edge.

For Tint Enter, we have these unique settings:
- **Color Channel:** The color you want to tint the objects in.
- **%:** The percentage you want to tint the color. For example, if you want to tint a black object white and set "%" to 0.5, the object will turn gray.
- **Main Only and Secondary Only:** Some objects have a Base Color and Detail Color, which is seen in the "Edit Object" menu. These options only change the these colors respectively.
- **HSV:** Instead of tinting the color of a different Color Channel, you can simply tint the same Color Channel and change the "HSV" values of it.