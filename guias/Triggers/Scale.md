## Scale
This Trigger is used to scale a specific Group ID. Its interface is seen below. After that, each option is described.

- **Target Group ID:** The objects you want to scale.
- **Center Group ID:** The center the objects should scale from. This Group ID can only consist of a single object. Leaving this as 0 will result in all objects scaling from their own center.
- **Duration:** The duration you want the scaling to last.
- **ScaleX/ScaleY:** How much you want to scale the objects in the X and Y direction respectively.
- **Div by Value X/Y:** Divides the current scale by this number and uses this as the target value.

If you want to scale an object and have it return to its original size, you can use "ScaleX/ScaleY" like normal on the first Scale Trigger, and simply tick the "Div by Value" boxes when scaling back on another Scale Trigger. For example, if you want to scale a block to 3.00, put "ScaleX" and "ScaleY" to 3.00. If you want it to return to 1.00 now, you would need to put 1/3 into the fields. This is not possible and leads to inaccuracies. By ticking the "Divide by Value" box, you divide the scale by 3.00, which brings you back to 1.00

- **Only Move:** The objects will only move to the place they would be when you scale them. They will not change their size.
- **Relative Rotation:** When blocks are rotated, they will rotate their X-axis and Y-axis as well. Turning this option on draws a new X-axis and Y-axis and puts it at the correct place. In the example below, the blocks are rotated 45 degrees.

![](https://guia.editorgd.xyz/assets/img/figures/79.png)
*Figure 7.13: Comparision of "Relative Rotation" on and off respectively.*<br>

- **Relative Scale:** This option makes the scale value adjust based on a reference object. Normally, if you scale an object down by 0.95 for example, each scale will be smaller and smaller. With this option enabled, the scale will instead refer to the object in the Center Group ID to decide what the next scale factor should be.
