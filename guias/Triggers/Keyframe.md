## Keyframe
This Trigger is used to set up keyframes. You can find an explanation of all settings below, as well as an in-depth example in the Keyframe System chapter.

The Keyframe Trigger is one of the most complex Triggers. We suggest following along with your own example when testing the options.

![](https://guia.jorge603.xyz/assets/img/figures/85.png)
*Figure 7.19: Keyframe Trigger.*<br>

- **GroupID:** The objects you want to reference for your animation. Note that these are not necessarily the objects that will do the animation. Those objects are normally set in the Keyframe Animation Trigger. "GroupID" in this Trigger is mainly used for referencing the art when you enable "Preview Art". However, it is also used as the target if you do not input any override when calling the Keyframe Animation Trigger.
- **Duration:** The duration until the Keyframe Trigger reaches the next one. This time is always used unless it is a "Ref Only" Keyframe. "Time", "Even" and "Dist" set how the time is used.
- **Easing:** Applies easing to the start and end of the keyframe.
- **x360:** If you want to do a full rotation (360 degrees) before reaching the next keyframe.
- **CCW/CW:** Whether you want the rotation to be done clockwise or counter-clockwise. Applies to all rotations, including full ones
- **SpawnGID:** Spawns a Group ID when the target objects reach the keyframe.
- **SpawnDelay:** Delay before "SpawnGID" is spawned.
- **Prox:** "SpawnGID" is spawned when the target objects are close to the keyframe.
- **Curve:** Keyframes use Bézier curve to get to the next keyframe.
- **Time:** With this option enabled, "Duration" is used to reach the next keyframe.
- **Even:** The time between the keyframes is distributed evenly between all the "Ref Only" keyframes in between.
- **Dist:** The duration before reaching the next keyframe is distributed between all "Ref Only" keyframes based on their distance from each other

Let us look at an example to better understand how the different options work.

![](https://guia.jorge603.xyz/assets/img/figures/86.png)
*Figure 7.20: Example of how keyframes work.*<br>

The red Keyframe Triggers are marked as "Ref Only", while the green and blue ones are not. The green keyframe controls the animation until the blue one, and the blue one controls it until the end. If you set easing on the green keyframe, that easing will be used to reach the blue keyframe. All red easing values are ignored since they are reference points only.

The numbers in the figure are example durations set on the Triggers. If you select "Time" on the green Keyframe Trigger, it will take 10 seconds to reach the next red keyframe. Afterwards, the red keyframe's duration will be used to reach the next one, so 5 seconds, and then 7 seconds from the next until you reach the blue keyframe. As a result, it takes 22 seconds in total to reach the blue one.

If you instead select "Even" on the green keyframe, it will ignore all the duration values of the red (reference) keyframes, and evenly spread out the 10 seconds between each keyframes. As a result, it will take 10 seconds in total to reach the blue one.

- **Close Loop:** The objects return back to the first keyframe after completing the last one.
- **Preview Art:** Used to preview the art you want to animate. By default, you only see the arrow icon. For this option to work, you have to put a Group ID and also declare a Group Parent ID. With this option enabled, the objects will spawn at the arrow position, with the Group Parent ID functioning like the arrow icon.

![](https://guia.jorge603.xyz/assets/img/figures/87.png)
*Figure 7.21: "Preview Art" on and off respectively.*<br>

- **Ref Only:** Reference objects. Objects marked as reference have a lower opacity and are not considered for the "Even" and "Dist" options. Check the corresponding options to see how their movement is handled.
- **Auto Layer:** Automatically layers the keyframes, so that the new one is the highest. Most useful when using "Preview Art".
- **Select All:** Selects all keyframes.
- **Update Art:** Updates the art for the "Preview Art" option. Changes done to the reference Group ID are not updated instantly, so you need to press this if you change your design.
- **Dup Anim:** Duplicates the keyframes. You cannot copy and paste them like normal, since the copy would be considered connected in that case.
- **Reverse Order:** Reverses the keyframe settings. For example, instead of scaling by 2 and moving 5 blocks to the right, it will scale by 0.5 and move 5 blocks to the left.