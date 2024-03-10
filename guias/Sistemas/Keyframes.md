## Keyframe System
The Keyframe System allows you to create precise animations using movement, rotation, and scaling with a single Trigger. This is done with several keyframes, which can be freely modified in turn

![](https://guia.editorgd.xyz/assets/img/figures/178.png)
*Figure 10.1: The Keyframe Trigger with default settings.*<br>

We will be going through all the options by creating an example. Assume we want to animate a cube moving in and jumping over Spikes. We will first create the cube we plan to animate and assign a Group ID to it, as well as the Spikes the cube will interact with, as seen in figure 10.2.

![](https://guia.editorgd.xyz/assets/img/figures/179.png)
*Figure 10.2: Scenary for the animation.*<br>

The cube has Group ID 1 assigned to it. We will now place a Keyframe Trigger to understand how basic movement using keyframes works. Place one of these Triggers, click "Copy+Paste" to duplicate it, and move the copied Trigger some blocks to the right. The Triggers will draw a green line between them, as seen in figure 10.3. The line indicates that they are connected and are part of the same animation.

![](https://guia.editorgd.xyz/assets/img/figures/180.png)
*Figure 10.3: Two connected Keyframe Triggers.*<br>

The Keyframe Triggers by themselves are not enough to create the animation. You need to configure a Keyframe Animation Trigger as well. Assign a Group ID to your first Keyframe Trigger, and input your Group IDs in the Keyframe Animation Trigger, as seen in figure 10.4. The Animation Group ID refers to the Group ID your first Keyframe Trigger has. The Target ID refers to the objects that get animated. The Parent ID is optional and is used to reference the center of the target objects for rotation and scaling. By default, all objects will use their own center. The second page of the Keyframe Animation Trigger modifies several animation options. We will be using some of them later. For more information regarding the settings, check its subchapter in the Triggers chapter.

![](https://guia.editorgd.xyz/assets/img/figures/181.png)
*Figure 10.4: The Keyframe Animation Trigger.*<br>

When playtesting, the cube should now move the same distance to the right as the distance between the two Keyframe Triggers. We can now add more Keyframe Triggers and change their positions, rotations, and sizes, and the cube will follow all of them. However, creating precise animations with only the Keyframe Triggers is difficult, as we do not have any reference points. To change this, we will use the "Preview Art" option in the Keyframe Triggers.

For the Keyframe Triggers to preview our cube, we have to assign a Parent Group ID to the cube. This Parent Group ID works as a reference point for the Keyframe Triggers. All movement, rotation, and scaling will use the Parent Group ID as the center. Our cube should scale and rotate around its own center, so we will add a new object to our cube, as seen in figure 10.5. This object also follows the animation. To mark this object as the Group Parent ID, we will click the "P" button in the Edit Group menu. Doing so turns the Group ID pink, as seen in figure 10.6.

![](https://guia.editorgd.xyz/assets/img/figures/182.png)
*Figure 10.5: Object to reference for the animation.*<br>

![](https://guia.editorgd.xyz/assets/img/figures/183.png)
*Figure 10.6: Assigning a Group Parent ID.*<br>

In the first Keyframe Trigger, we can input the Group ID of our cube now. By clicking the Preview Art option, the keyframe will be replaced with our cube objects, as seen in figure 10.7. Note that the Preview Art option does not work without the objects having a Group Parent ID, as the Keyframe Triggers have no center to draw from without it. You can enable the Preview Art option in the other Keyframe Triggers and hide the Group Parent ID object now.

With our keyframes looking like our art now, we have a lot more control over the movements. However, with all the frames showing at full opacity and layering between them inconsistently, doing exact animations is difficult. You can enable the "Ref Only" option in Keyframe Triggers for lower opacity, as seen in figure 10.7. The "Auto Layer" option fixes our layering issues. This option draws the most recent keyframe at the highest layer, so you always have it completely visible.

![](https://guia.editorgd.xyz/assets/img/figures/184.png)
*Figure 10.7: Keyframes with "Preivew Art", "Ref Only", and "Auto Layer" enabled.*<br>

You can now create your animation by setting more keyframes at important locations. In our example, this is the beginning of the animation, the position where the cube begins to jump, the movement and rotation during the jump, and the position the cube lands at. You can modify each keyframe position, rotation, and size, as seen in figure 10.8.

![](https://guia.editorgd.xyz/assets/img/figures/185.png)
*Figure 10.8: Keyframes set up using movements and rotations.*<br>

If you look closely, the jump is not smooth at all. It consists of only straight lines between frames with no curvature. To fix this, enable the "Curve" option for the relevant Keyframe Triggers, which results in a much smoother animation, as seen in figure 10.9.

![](https://guia.editorgd.xyz/assets/img/figures/186.png)
*Figure 10.9: Using the "Curve" option for smoother circular movement.*<br>

When playtesting, you will notice that the animation still looks weird. The movement speed between the frames is inconsistent, resulting in the jump being slower than the sliding. The is is because of the "Time" option, which checks for the "Duration" value. Right now, the "Duration" value is 0.5, which means the animation from one keyframe to the next one takes 0.5 seconds. However, we want the duration to change based on the distance of the Triggers. Triggers that are further apart take longer than ones closer to each other.

We can achieve this by enabling the "Dist" option. The "Even" option makes the time between keyframes even, disregarding the distance. Note that the first Keyframe Trigger should always use the "Time" option, as the other keyframes marked as "Ref Only" will not be considered for the other options otherwise, resulting in rash movements. The Keyframe Triggers should look like this now.

![](https://guia.editorgd.xyz/assets/img/figures/187.png)
*Figure 10.10: Current Keyframe Trigger setup.*<br>

Depending on how many keyframes you placed, the movement may still look too slow. You can change this by modifying the time variable in the Keyframe Animation Trigger. On the second page, you will find the "Time Mod" option, which speeds up or slows down your animation depending on what value you put. A value smaller than 1 will speed the animation up, while a value greater than 1 will slow the animation down. Play around with the "Time", "Even", "Dist", "Duration", and modifier settings to find a good balance to create smooth movements.

With this, our first animation is complete. Assume that we want to create a second cube jumping over the Spikes from the other side using the same keyframe animation. We first create our second cube and give it a new Group ID. We now want to make a copy of our keyframes. However, using "Copy+Paste" does not work, as the keyframes will be connected. We can instead use the "Dup Anim" button within the keyframes. By inputting our new Group ID, we are now referencing the new cube. Assign a new Group ID to the first Keyframe Trigger and place a new Keyframe Animation Trigger with all new Group IDs. The result is figure 10.11.

![](https://guia.editorgd.xyz/assets/img/figures/188.png)
*Figure 10.11: Second cube with all Triggers set up.*<br>

When playtesting, you will see that the second cube will not jump over the Spikes. Instead, it will follow the exact movement of the first cube. By clicking the "Reverse Order" button, the animation is done in reverse like we want. Movement to the right will go to the left instead.

If we want to change anything about our cube art, for example adding more details or changing the color, we will see that the Keyframe Trigger art is not updated accordingly. To fix this, click the "Update Art" button in any Keyframe Trigger.

Due to how we set up the keyframes, our rotations will always be in the correct direction. However, you might want to rotate some frames clockwise and others counter-clockwise. You can achieve this by clicking "CW" for clockwise or "CCW" for counter-clockwise. By default, rotations happen in the closer direction. The "x360" option adds an entire rotation before reaching the keyframe.

We want to finalize our animation by adding a screen pulse when the cubes land. To do this, we can use the "Spawn ID" feature in the Keyframe Triggers. Configure a Pulse Trigger like normal and assign it a Group ID. Input this Group ID into a Keyframe Trigger. The pulse will spawn when the animation reaches that keyframe. Using the "SpawnDelay" option can delay the Trigger by a set duration. Alternatively, you can use the "Prox" option to spawn the pulse when the cube is close to the keyframe.

And with that, our animation is finished. Figure 10.12 shows the final setup. You can move the Keyframe Triggers out of the screen now without the animation changing. For an easy way to select all keyframes in an animation, click one of them and click the "Select All" button.

![](https://guia.editorgd.xyz/assets/img/figures/189.png)
*Figure 10.12: The final setup of our keyframe animation.*<br>