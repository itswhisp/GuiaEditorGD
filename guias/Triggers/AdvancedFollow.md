# Advanced Follow
Advanced Follow Triggers are used to make objects move towards a target and make them follow its movement. They are by far one of the most complex Triggers in the game. We highly suggest you follow along on your own example when testing out the options.

![](https://guia.jorge603.xyz/assets/img/figures/80.png)
*Figure 7.14: The Advanced Follow Trigger.*

- **Target GID:** The Group ID of the objects that should go towards the Group ID set in "Follow GID".
- **Follow GID:** The Group ID of the object that should be the new target. You can choose from the buttons below for more options.
- **Priority:** The priority at which the movements will be applied if an object is affected by more than one Advanced Follow Trigger.
- **X/Y Only:** The objects will only follow the X or Y movement of the Group ID in "Follow GID" respectively.
- **P1/P2/C:** Corresponds to Player 1, Player 2, and the screen center
respectively.
- **Rotation Offset:** Offsets the rotation of the objects. Enter a negative value to offset the rotation to the left or a positive value to offset the rotation to the right.
- **Ignore Disabled:** The movement is not applied if the objects are not active. Activating them again starts the movement.
- **Rotate Dir:** Makes the objects rotate towards the target.
- **Rotate Easing:** Adds easing to the rotation of the objects.
- **Rotate DeadZ:** A deadzone for the rotation of the objects.
- **Init:** This option is used for the second and third mode, and controls how the values you define in "Startspeed" and "StartDir" are applied. With this option, the values are used only when the object has no speed values.
- **Set:** This option is used for the second and third mode, and controls how the values you define in "Startspeed" and "StartDir" are applied. With this option, any current velocity gets overridden.
- **Add:** This option is used for the second and third mode, and controls how the values you define in "Startspeed" and "StartDir" are applied. With this option, the velocity gets added to the current one.
- **Exclusive:** Advanced Follow Triggers have a "Priority" value. When multiple Advanced Follow Triggers for the same object are active, it will process them in order based on "Priority". If an action is exclusive, it will not process any other actions after it.

On the second page you can choose between 3 different modes by using the three buttons labeled 1, 2, and 3 in the top right. We will be going through all options and what their differences are.

The "+-" sliders on all options indicate variance. For example, if you input a "Delay" of 3 and enter 2 into the "+-" field, the "Delay" will randomly be chosen in a range of 2 below and above. As a result, you get 1 to 5 "Delay".

![](https://guia.jorge603.xyz/assets/img/figures/81.png)
*Figure 7.15: Mode 1.*

In the first mode, the objects will simply move towards the target.

- **Delay:** Delay before the movement starts.
- **MaxSpeed:** Max speed the objects can reach. Leaving this at 0 results in no movement at all.
- **MaxRange:** Range in which the "Follow GID" has to be to the "Target GID" to start the movement. One block is equal to 30.
- **Easing:** Adds an easing to the start and end of the movement.

In the second mode, the objects will also move towards the target. However, you have more options to customize the movement depending on how close the objects are to the target.

![](https://guia.jorge603.xyz/assets/img/figures/82.png)
*Figure 7.16: Mode 2.*

- **Delay:** Delay before the movement starts.
- **MaxSpeed:** Max speed the objects can reach. Leaving this at 0 results in no movement at all.
- **MaxRange:** Range in which the "Follow GID" has to be to the "Target GID" to start the movement. One block is equal to 30.
- **StartSpeed:** The speed the objects have when they start their movement.
- **StartDir:** The direction the objects face when they start their movement, with 0 meaning up, 90 right. and so on.
- **Acceleration:** The acceleration of the objects.
- **Friction:** The friction that is applied to the objects.
- **NearDist:** At what distance the objects are considered near the target. One block is equal to 30.
- **NearFriction:** The friction of the objects when they get near the target. What counts as near is configured by the "NearDist" value.
- **NearAccel:** The acceleration of the objects when they get near the target. What counts as near is configured by the "NearDist" value.

The three boxes on the right correspond to their respective options. They apply their setting towards a set reference object. "MaxRange" will be drawn from the objects to the reference object. "StartSpeed" functions like a multiplier in this setting. It will copy the movement speed of the reference object. By inputting a 2 in the slider, you double the speed. "StartDir" makes the objects face towards the reference object.

In the third mode the objects will also move towards the target. However, you can also edit more attributes of the movement.

![](https://guia.jorge603.xyz/assets/img/figures/83.png)
*Figure 7.17: Mode 3.*

![](https://guia.jorge603.xyz/assets/img/figures/84.png)
*Figure 7.18: Mode 3, second page.*

- **Delay:** Delay before the movement starts.
- **MaxSpeed:** Max speed the objects can reach. Leaving this at 0 results in no movement at all.
- **MaxRange:** Range in which the "Follow GID" has to be to the "Target GID" to start the movement. One block is equal to 30.
- **StartSpeed:** The speed the objects have when they start their movement.
- **StartDir:** The direction the objects face when they start their movement, with 0 meaning up, 90 right and so on.
- **Acceleration:** The acceleration of the objects.
- **SteerForce:** The force that is applied when the objects steer towards the target.

The three boxes on the right correspond to their respective options. They apply their setting towards a reference object. "MaxRange" will be drawn from the objects to the reference object. Secondly, "StartSpeed" functions like a multiplier in this setting. It will copy the movement speed of the reference object. For example, by inputting "2" in the slider, you double the speed. Lastly, "StartDir" makes the objects face towards the reference object.

- **SteerForceLow:** The lowest the steer force can get.
- **SpeedRangeLow:** The speed of the objects when they are not within the "MaxRange".
- **SteerForceHigh:** The highest the steer force can get.
- **SpeedRangeHigh:** The speed of the objects when they are within the "MaxRange".
- **SlowAccel:** The acceleration of the objects when in the "SlowDist" distance from the target object.
- **SlowDist:** The distance from the target object that is considered slow, which applies the "SlowAccel" setting. One block is equal to 30.
- **BreakForce:** The force at which the objects brake when the target suddenly goes in a different direction.
- **BreakAngle:** The angle at which the objects will brake.
- **BreakSteerForce:** The force at which the objects steer while braking.
- **BreakSteer SpeedLimit:** The max speed at which the objects can steer while braking.
- **Target Dir:** The objects move in the direction of target.

The checkboxes next to "SteerForceLow" and "SteerForceHigh" enable low and high speed modes respectively. As a last note for this Trigger, it is worth noting that you can select from two premade settings by clicking the "Pre" button on the first page.