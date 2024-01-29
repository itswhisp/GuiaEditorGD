# Keyframe Animation
This Trigger is used to activate a keyframe animation. You can find all settings below, as well as a detailed example of its usage in the Keyframe System chapter.

- **Animation Group ID:** Group ID of your Keyframe Triggers. It is enough for the first Keyframe Trigger in your animation to have this Group ID.
- **Target ID:** The objects you want to follow the animation.
- **Parent ID:** The Group ID that should be used as the center for scaling and rotating. By default objects will choose their own center. You can also set the center of the objects using the "Group Parent ID".
- **Time/Position/Rotation/Scale Mod:** The values you put here will be multiplied with the movement of the keyframes. For example, if the keyframes move 50 blocks to the right, rotate 90 degrees, and scale to 4.00, and you put 0.5 for all modifiers, the target objects will only move 25 blocks, rotate 45 degrees, and scale to 2.00