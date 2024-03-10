## Channel System
Working with Rotate Gameplay Triggers can be tricky, especially when you change directions often and want to use many Triggers. See the example in figure 9.1. Normally Triggers are read from left to right, but this can lead to issues in the example. How should the editor know when these Triggers should be activated? This is handled by using the Channel System. Here, we cover a short example on how to use Channels well.

![](https://guia.editorgd.xyz/assets/img/figures/173.png)
*Figure 9.1: Example using rotated gameplay in combination with Pulse Triggers.*<br>

In this example, we want the player to go in a circle across all sides and pulse the background in a different color when jumping over a Spike. When playtesting in the editor, you will find that the player does not change rotation when reaching the top left Rotate Gameplay Trigger. This is because the Trigger gets activated first and is immediately overridden by the Trigger in the bottom left. To fix this, we have to change the order in which the Triggers are read.

Rotate Gameplay Triggers have a "Change Channel" option, which puts the player on a different Channel when that Trigger is activated. By default, the player, all Triggers, and all Gameplay Objects are on Channel 0, resulting in everything getting activated from left to right.

In our example, we want to activate the Rotate Gameplay Triggers in the following order: bottom right, top right, top left, and bottom left. To achieve this, we change the Channel of the player after reaching the bottom right Trigger, as seen in figure 9.2.

![](https://guia.editorgd.xyz/assets/img/figures/174.png)
*Figure 9.2: Changing the Channel.*<br>

After reaching the Trigger, the player is on Channel 1 instead of 0. While on the right side of the square, we want to activate the right Pulse Trigger and the top right Rotate Gameplay Trigger. To achieve this, we have to put them on the same Channel as the player.

To put objects on a different Channel, first select them and click "Edit Group". In the bottom right of the menu, you will find a textbox titled "CH". This refers to the Channel of the objects. As seen in figure 9.3, you can input "1" in "CH" to put them on the same Channel as the player.

![](https://guia.editorgd.xyz/assets/img/figures/175.png)
*Figure 9.3: Putting the Rotate Gameplay and Pulse Triggers on Channel 1.*<br>

We will now activate the first and second Pulse and Rotate Gameplay Triggers in the correct order. When reaching the second Rotate Gameplay Trigger, we want to put the player on a different Channel again. If we do not do this, the top left Rotate Gameplay Trigger is activated at the same time as the second one, resulting in unwanted behavior. Similar to figure 9.2, we now change the Channel of the player to 2 by using the "Change Channel" option in the Rotate Gameplay Trigger.

![](https://guia.editorgd.xyz/assets/img/figures/176.png)
*Figure 9.4: Changing the Channel of player to 2.*<br>

We repeat this for all Triggers. We change the Triggers that we want to activate to the Channel the player is currently on, and we change the Channel of the player whenever we reach a new Rotate Gameplay Trigger. See figure 9.5 for the final settings for our example

![](https://guia.editorgd.xyz/assets/img/figures/177.png)
*Figure 9.5: Final setup of our example.*<br>

Channels should be used for Speed Changers as well, to ensure that the sync does not behave weirdly when having rotated or reversed gameplay. When playtesting the music in the editor, you will see that the line now changes directions accordingly and at the right position. If you have several Triggers on one Channel, they will be read in the direction of the arrow. You can playtest the music and see the direction in which the line goes to see the order in which the Triggers or Gameplay Objects will be activated.