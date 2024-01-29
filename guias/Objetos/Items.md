# Items

### Description

Items are found in the tenth tab of the editor, and consist of various objects that are suitable as Collectables. This means that they can be picked up throughout the level, whether they are optional extra challenges or necessary to advance. You can also use many of these as decorations if you wish. The first page of the tab is seen here:

![](https://guia.jorge603.xyz/assets/img/figures/56.png)
*Figure 5.1: The Items tab.*

### User Coins
The first object in the tab are User Coins. These are the most used Collectables in the game because they are official. This means that they show on a level's menu screen and may count towards player statistics. You can place up to three of these in your level, but note that you do not need to put any. They are supposed to offer an extra, optional challenge for the player, meaning that they should not be a part of the level's normal route and free to get when beating the level. Once you upload your level, they will initially show as bronze both inside the level and on its menu screen. However, if your level gets rated, RobTop can "verify" the coins, making them silver and count for statistics. This means that players get more User Coins on their Profile if they collect yours and beat the level. Note that he may not verify them if your User Coins are free. Similar to Animated Objects, you can use Edit Special to edit their default rotating animation.

### Custom Collectables
All other objects in the tab function as custom Collectables. You can assign specific actions to them that will be activated once they get collected. This can be editing a specific Item ID, activating or deactivating a specific Group ID, or assigning Points that add up for the player. To access these options, first place the Collectable you want to use and click "Edit Special". This opens the following menu:

![](https://guia.jorge603.xyz/assets/img/figures/57.png)
*Figure 5.2: The "Edit Special" menu for custom Collectables.*

You can use "Pickup Item" to change the value of an Item ID. Item IDs are variables that can be edited and referenced throughout the level. Enter the Item ID you want to change in the "ItemID" field. By default, the Item ID will be increased by one. By enabling the "Sub Count" option, it will be decreased by one instead. You can read the Pickup Trigger section, as well as the various Item Triggers, for more information on Item IDs.

Use "Toggle Trigger" if you want the Collectable to behave like a Toggle or Spawn Trigger. By default, the Group ID will be toggled off. If you click the "Enable Group" option, the Group ID you input in the "Group ID" field will toggle on instead. If the Group ID is assigned to a Trigger, the Trigger will be activated like a Spawn Trigger instead. You can read the Using Groups section for an explanation of what Group IDs are and how to use them.

The "Particle" option allows you to spawn particles when the custom Collectables are collected. Assign a Group ID to your set of particles and enter that Group ID in the "Particle" field. Note that your particles cannot have an infinite duration for this to work. You can check the Particle Editor subchapter for more information about particles and how to use them.

Lastly, you can assign Points to the Collectables. Points function similarly to Item IDs. However, they count as a single variable and are used for the Level Leaderboards in Platformer levels. The number you input in the "Points" field is how many Points the custom Collectables will award when collected.