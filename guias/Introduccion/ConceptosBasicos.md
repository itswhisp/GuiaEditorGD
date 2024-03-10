## Conceptos Basicos

### Getting Started
First, you have to find your way to the editor. On the main menu, click the right button, and then click "Create" in the top left. This brings you to the screen in figure 1.1, which is your list of custom levels. Note that levels here are not public, but rather custom levels saved locally on your account. Public levels are accessed through the bottom left button. More on that later. To start a new level, do as the text says and click "New" in the bottom right.

![](https://guia.editorgd.xyz/assets/img/figures/1.png)
*Figure 1.1: Your local custom levels.*<br>

![](https://guia.editorgd.xyz/assets/img/figures/2.png)
*Figure 1.2: Starting a new level.*<br>

At the top, you can set a level name and an optional description. The button in the middle lets you play the level, while the right button is where you share the level with others through the servers. To start editing, click the left button. This brings you into the editor itself

![](https://guia.editorgd.xyz/assets/img/figures/3.png)
*Figure 1.3: The editor with the default settings.*<br>

### Level Settings
A good place to start is the main level settings, which are accessed by clicking the gear button in the top right corner of the editor. This opens the window seen below.

![](https://guia.editorgd.xyz/assets/img/figures/4.png)
*Figure 1.4: The main level settings.*<br>

These settings decide the level's starting state. This means that they define what a player sees at the start of their attempt. Many of these settings, such as Speed, Game Mode, and colors, can be changed inside the level itself too. This allows you to change them further into the level. Going through each option in figure 1.4 in turn, we have:

- **Game Type:** This is perhaps the most important option to decide on, as it changes how your level plays completely. It cannot be changed throughout the level.
    - Classic is the original way to play Geometry Dash  levels, in which the camera automatically scrolls to the side. To beat the level, the player has to avoid obstacles to make it all the way to the end of the level. This is done by clicking to change their vertical position in different ways depending on the Game Mode. For example, in the most simple mode, Cube, you jump by clicking, while something like Wave moves your icon diagonally from holding.
    - Platformer is the newest Game Type, and as the name implies, it lets the player move around freely. You can click to move left or right as you please, and another input allows jumping. How exactly the inputs work depend on the device you are playing on.

![](https://guia.editorgd.xyz/assets/img/figures/5.png)
*Figure 1.5: The different speed options.*<br>

- **Speed:** This sets the starting speed of your level. It can be changed at any point in the level. The blue option is the default speed, and the others are modifiers of this. Each one is fittingly indicated by a reversed arrow or more arrows depending on how much they modify the speed. The reversed orange option is the slowest option, which is roughly 25% slower than the normal speed. For double, triple, and quadruple arrows, the modifier is roughly 25%, 50%, and 75% faster than the normal option.

![](https://guia.editorgd.xyz/assets/img/figures/6.png)
*Figure 1.6: The different Game Modes.*<br>

- **Mode:** This alters the way the icon moves when the player clicks. It is often referred to as Game Mode, and should not be confused with Game Type. This can also be changed at any point in the level. The different ones are shown in figure 1.6 below. From left to right, we have:
    - Cube is the default Game Mode, which has the player click to jump as previously mentioned. Interaction with objects such as Pads and Orbs make it a bit more complex, but those are handled later.
    - Ship lets the player fly, and the exact trajectory is dependent on clicks. Holding down takes you up very fast, while letting go makes you fly downwards. Clicking fast in a consistent pattern makes it possible to fly in a straight horizontal line.
    - Ball makes the player's icon circular, and movement makes it roll. Clicking switches the gameplay gravity, which means that the icon goes from rolling on the ground to rolling on the roof (or vice versa).
    - UFO also makes the player fly, but instead of precise control like Ship, clicking makes you boost a certain distance upwards. Holding down is not possible.
    - Wave has the player move diagonally by holding or letting go. If you hold down, you move diagonally upwards, while letting go makes you move diagonally downwards. This is disabled in Platformer
    - Robot is similar to Cube, but instead of a set jump height, the amount you hold down decides the vertical movement. Clicking very fast leads to a small jump, while holding down (to a certain limit) takes you higher.
    - Spider is similar to Ball, but clicking makes gravity switch instantly
    rather than a slower rolling motion.
    - Swing is also based on flying, but each click changes the player's gravity. This is disabled in Platformer
- **Options:** This lets you set various other options. Most of them, like Flip Gravity and Reverse Gameplay, speak for themselves. Mini makes the player's icon smaller, altering the effects of clicks to some degree. Dual duplicates the icon into two, making it so that the player has to control two icons. Every click affects both icons. Enabling 2-Player changes this to require clicking on each side of the screen for each icon. Spawn Group lets you set a specific target object, given by its Group ID, as the spawn position. Applying Group IDs are covered more later, but essentially an object may have a Group ID for Triggers to interact with it. Clicking the top right gear button opens Legacy Options, which fix various older bugs. These should not be changed in new levels.
- **BG, G, and MG:** This sets the type of Background, Ground, and Middleground art to use from the start. The Ground is on the front layer, making it the only one the player interacts with directly at the bottom of the level. BG and MG are seen behind the player. The difference between these two is their layering, with Background being furthest back. All of these three can be changed at any point in the level.
- **Font:** There is normally an attempt counter found at the start of levels, and this option changes the font used for this. It also changes any other text objects found in the level. You cannot change this further into the level.
- **Select Color:** At the top of the window, you can set colors for various parts of the level. BG, G, and MG set the colors for the art described earlier. (G2 and MG2 are secondary colors used for details.) Line is an outline for the Ground. Clicking "More" lets you change the starting settings for the custom Color Channels. These are used for other objects. Note that any colors can be changed at any time in a level.
- **Select Song:** This is where you set what song to use. The various options and menus are handled in the next chapter.

### Placing Objects
Back to the main editor screen, the main part you will interact with is the bottom section, seen in figure 1.7. To begin creating, have the "Build" button on the left selected (indicated by blue color). This is where all the different objects in the game are located. We will write "objects" in lower case to refer to objects in general, so any goes. Clicking on an object selects it for use, which lets you place it in your level. This is done by clicking at the desired position on the grid. While an object is selected, you can enable "Swipe" on the right side to place objects over the area you swipe (hold down and drag).

![](https://guia.editorgd.xyz/assets/img/figures/7.png)
*Figure 1.7: The various object tabs.*<br>

There are various types of objects, which are grouped into specific tabs based
on their properties. Each object is only found within one tab. Inside a tab, you
can also click through several pages using the arrow buttons. Going through
each tab in order, we have:

- **Blocks:** This tab ranges from simple squares to more detailed blocks. Some have outlines, while others do not. This is visible by the white lines, indicating that they are solid, which means they interact with the player upon collision. Putting these in front of the player's movement means that they have to jump to pass them. Colliding with a line horizontally leads to death. However, landing on top of them is fine.
- **Outlines:** Various basic outlines are found here. As mentioned for the previous tab, these interact with the player when touched.
- **Slopes:** These are similar to blocks, but instead of being square they are sloped. There are two types of slopes in the game. One is basically a block cut in half diagonally, making a 45 degree angle, while the other makes a slope over 2 blocks. Interaction with a sloped outline is safe in most cases.

![](https://guia.editorgd.xyz/assets/img/figures/8.png)
*Figure 1.8: The Slopes tab, which showcases the two main types of slopes.*<br>

- **Spikes:** Spikes lead to death on any collision no matter what.
- **3D:** These can be combined with blocks to make them look 3D.
- **Gameplay Objects:** Various objects that affect gameplay are found here. For example, this is where you find objects that change the Speed and Game Mode as mentioned earlier. These are covered more in-depth in their own chapter later. Click the title for a direct link to the chapter.
- **Animated Objects:** While most objects are still by default, the ones found in this tab have certain animations built in. These are also covered more in-depth in their own chapter later
- **Pixel Art:** Lots of different art made up of small pixels are found here. None of them interact with the player by default, but you can combine them with lines or Spikes for the effect you want.
- **Items:** These objects are used as Collectables that can be picked up during gameplay.
- **Symbols:** Various Symbols, even some art from the game's menus, are found here. None of these are solid.

![](https://guia.editorgd.xyz/assets/img/figures/9.png)
*Figure 1.9: The Symbols tab.*<br>

- **Decorations:** Different types of objects that do not interact with the player. As the name implies, they are meant to be used as decorations to fill space.
- **Pulsing Objects:** These are called Pulsing Objects because they automatically pulse to the beat of the song. Pulsing in this case means scaling to a bigger size for more intense audio.
- **Rotating Objects:** Many circular objects that automatically rotate, such as saws but also decorations. Saws are spiky and lead to death upon collision. The speed and direction of all these objects can be customized.
- **Triggers:** Triggers are more complex objects that let you do endless customization, whether it is something as simple as moving an object to something complex like making a bossfight. None of these objects show in the level itself when played, but start their set operation when passed on the X axis during gameplay. You can also make them Trigger when touched by the player. Every Trigger is covered in-depth in its own chapter.
- **Custom Objects:** This tab is empty when you are new to the editor. It lets you save combinations of objects to be reused at any time, even in another level. Each one can have maximum 1000 objects, and you can make 250 custom objects in total. See the dedicated chapter for more details.

### Editing Objects
After successfully placing objects in the editor, you may want to edit them in some way. Figure 1.10 shows an example. Assume you want to move these three Spikes (often referred to as a "triple Spike") one block to the right. To do this, you have to click the "Edit" button in the bottom left. Afterwards, you can click an object to select it for editing. Normally, you can only select one object at a time. To select all three at once, enable "Swipe" in the bottom right as seen in the example. This lets you swipe over the objects you want to select.

![](https://guia.editorgd.xyz/assets/img/figures/10.png)
*Figure 1.10: An example of objects to be edited.*<br>

Now that the objects are selected, indicated by the green outline, we can move onto actually editing them. The buttons in the lower section, seen in figure 1.11, are all used for this. Most of these are self-explanatory, so testing them out yourself is recommended. The various arrows move the selected object(s) in their given direction. How much they move is indicated by the number of arrows. Other buttons, like the circular arrows, let you rotate the object(s) a given amount. The one with "Free" inside it lets you rotate as much as you would like.

![](https://guia.editorgd.xyz/assets/img/figures/11.png)
*Figure 1.11: The various editing buttons.*<br>

Having found the correct button, double arrow to the right, we get the result in figure 1.12. Another way to do this is by selecting "Free Move" and "Snap" in the bottom right. The former lets you move the selected objects wherever you want, even outside of exact grid positions, while "Snap" puts the objects in exact grid positions. Together, this combination gives us the result we wanted, but you can also use "Free Move" on its own to move off-grid.

![](https://guia.editorgd.xyz/assets/img/figures/12.png)
*Figure 1.12: Spikes moved to the right.*<br>

If you are satisfied with your edits, click the "Deselect" button on the far right. You can also deselect the objects by placing new objects. After this, you can go ahead and place or edit other objects. Additionally, you may see another "Rotate" button in the bottom right that has not been covered yet. This has the same functionality as the previously mentioned "Free" rotation button but is easier to access.

### Scaling & Warping
The last three buttons in the "Edit" tab, as the names imply, let you scale or warp the object. This means to change its form and/or size in some way. In essence, each of these buttons can do the same thing, but with even more control sequentially. The first "Scale" only lets you scale the objects in place, which means they keep their original aspect ratio. With the second one, you can scale for the X and Y axis as you wish, allowing for even more control

![](https://guia.editorgd.xyz/assets/img/figures/13.png)
*Figure 1.13: Using the "Warp" tool.*<br>

With "Warp", you get the most control. Selecting it opens the interface seen in figure 1.13, which features various buttons. Each of the square buttons let you scale as with the previous two buttons. You use them by holding one down and dragging to your desired scale. If you want the scaling to be in place, you can toggle the lock in the top right. As for the circular buttons, the middle one is used as an anchor point for rotation, while the outer one performs the actual rotation. Finally, we have the two rectangular buttons outside the square ones. These let you skew the objects in a given direction. As an example, dragging the top one to the left results in the example below. The anchor point also affects how much you can skew.

![](https://guia.editorgd.xyz/assets/img/figures/14.png)
*Figure 1.14: Example of objects skewed to the left.*<br>

### Select Color
After having warped the Spikes successfully, you may want to change their color a bit. Assume you want to make the outline of the left Spike red. This is done by selecting the object and clicking "Edit Object" on the far right, which opens the menu seen below.

![](https://guia.editorgd.xyz/assets/img/figures/15.png)
*Figure 1.15: The Color Channel menu.*<br>

In here, you have various options for coloring the object. Selecting "P-Col 1" or "P-Col 2" makes the color based on the player's colors. "Light BG" makes it a lighter shade of the Background Color, while "Default" simply sets it to its default. For Spikes, this is white, but it varies from object to object. Below this, you can select custom Color Channels that can be specified freely. These are numbered from 1 to 999. "Next Free" finds the next unused Color Channel, which is 1 in our case. To begin customizing it, click on top of the colored square in the bottom right. This opens the following menu:

![](https://guia.editorgd.xyz/assets/img/figures/16.png)
*Figure 1.16: Customizing colors for objects.*<br>

Here, you have various options to set the color of the object. Selecting the color by using the outer wheel and then its shade by using the inner circle is the easiest way. You can also specify a color exactly by its "RGB" or "HEX" values in the bottom right, while "Opacity" changes how transparent the color is. "Copy" and "Paste" in the top right are used if you want to copy and paste colors across channels, while "Default" sets it back to the standard white.

On the left, "Copy Color" lets you input another Color Channel to copy from but with potential changes to HSV. HSV is also seen in figure 1.15 as a "HSV" button. This allows you to change hue, saturation, and brightness of the color for the selected object (and not the channel as a whole). By default, the color is solid, but enabling Blending makes it blend with the visuals behind it. "Player Color 1" and "Player Color " are, as explained earlier, based on the player's choice of colors.

![](https://guia.editorgd.xyz/assets/img/figures/17.png)
*Figure 1.17: Left Spike with its color changed.*<br>

With the object's color set to red, it is successfully colored as seen above. The defined Color Channel can also be given to other objects you wish to have the same color. It is worth noting that the Color Channel's settings can be changed throughout the level using a Color Trigger. Changing it inside the menu in figure 1.15 only sets the starting values for the channel. Additionally, note that some objects have two different parts that can be colored. This is indicated by a "Detail" button next to "Base" in the top left of the color menu, allowing you to switch between the settings of each. In our example, the Spike only has one customizable color, which is the outline, so only "Base" is shown. This is called the Base Color, while some objects also have Detail Color.

### Deleting Objects
If you place the wrong object, you may want to delete it from the level entirely. This is done in the bottom tab called "Delete", which is shown in figure 1.18. Just having this tab opened allows you to click any object to delete it. As with building and editing, you can select "Swipe" on the right to drag over multiple objects you want to delete. However, there are numerous other options inside the tab as seen below.

![](https://guia.editorgd.xyz/assets/img/figures/18.png)
*Figure 1.18: The tab for deleting objects.*<br>

The four buttons on the right are filters for deleting. These are useful if you have many different types of objects overlapping, and you only wish to delete certain types of them. If you have "None" selected, which is the default, any objects can be deleted. Switching to "Static" means that only solid blocks can be deleted. As for "Details", this covers a lot of different types of objects, such as Portals, decorations, Triggers, and more

![](https://guia.editorgd.xyz/assets/img/figures/19.png)
*Figure 1.19: Having an object selected while in the "Delete" tab.*<br>

If you enter this tab while having an object selected (from the "Edit" tab), you get some more options. Switching to "Custom" on the right makes it so that only the selected object can be deleted. After enabling this, you can head back to "Edit" and swipe to select an area of objects you want to delete from. Afterwards, head back to "Delete" and click the top left deletion button (indicated by a trash can), either within the tab or in the top left of the editor. Both of these do the same action, but the latter is easier to access at any time. There is also the "All" button on the left which deletes every instance of this object in your level. Next to this is a button to delete all Start Pos Triggers.

![](https://guia.editorgd.xyz/assets/img/figures/20.png)
*Figure 1.20: Four special buttons.*<br>

Finally, we have the four middle buttons marked in the figure above. Opening each one gives a good idea of what they do, but they are covered shortly here. The top left one lets you find a specific Group ID. Looking up Group ID 23, for example, will take you to an object using this if it still exists and is not deleted. If there are multiple objects using this Group ID, you are taken to the object that received it first. The two buttons to the right are Group ID and Color Channel filters respectively. As an example, writing "1" in either means that you can only delete objects with Group ID or Color Channel 1 while in the "Delete" tab. This is useful if you wish to delete only objects using that specific color among many others. The bottom left trash can button is a quick way of resetting all of these filters without having to go into their window. You can also use these filters to select objects by enabling "Select Filter" in Options

### Other Buttons
There are still many buttons in the user interface that we have not touched on yet, which are summarized here. Some of them are covered more in-depth later on when appropriate. We will be using figure 1.21 to cover specific buttons, referencing them by colored boxes that have been drawn on top (not from the game).

![](https://guia.editorgd.xyz/assets/img/figures/21.png)
*Figure 1.21: The entire user interface for reference. Note that the colored boxes are drawn on.*<br>

In the top left, marked in purple, are buttons to undo and redo the recent action. As an example, you can use this to recovered a wrongly deleted object. However, note that not all actions can be undone or redone, such as applying Color Channels or Group IDs. Below these two buttons, we have playtesting buttons marked in yellow. The top one playtests the music of the level, showing a line moving to help sync visuals to the song. The lower one lets you playtest your level inside the editor, starting from the start or a set start position.

In the white box are buttons for zooming in and out inside the editor, letting you see details more clearly or whole areas at once. Right next to these are some optional buttons that are enabled from Options referred to as Link Controls. Clicking the top one links several selected objects together, making them act as a single object (for editing or deleting). The bottom one, on the other hand, unlinks linked objects.

At the top, marked in black, is a slider that simply lets you slide through your level horizontally inside the editor. You can also move around by simply swiping in a given direction. To the right of this slider, in the top right, we have the start level settings covered earlier, as well as the Pause Menu shown below. This opens up many other options covered later. However, for now, we note the middle buttons since these are most important as a beginner. "Resume" goes back into the editor, while "Save and Play" saves the level and starts an attempt on it. This lets you see exactly how the level will play for other users once uploaded, unlike playtesting in the editor. "Save and Exit", "Save", and "Exit" are self-explanatory

![](https://guia.editorgd.xyz/assets/img/figures/22.png)
*Figure 1.22: The Pause Menu.*<br>

Back to figure 1.21, we have the numerous buttons inside the red and blue boxes on the right. These are shown together in an edited image below for easier access. Many of these are self-explanatory, while others are not.

![](https://guia.editorgd.xyz/assets/img/figures/23.png)
*Figure 1.23: Various buttons for editing objects and using layers.*<br>

"Copy", "Paste" and "Copy+Paste" all do similar actions, which is making a new copy of the selected object(s). The button that has both in one will copy the selected object(s) and place the copy on top of the old one. If you wish to copy something from one spot in the editor to somewhere far away, the separate buttons are useful. Simply use "Copy" on what you want to copy, move to where you want to paste, and click "Paste". This also works across levels if you want to copy something into another level you are working on.

"Copy Values" copies Group IDs and Color Channels, allowing you to paste them onto other objects. "Paste State" does both, while "Paste Color" only pastes the color information. "Edit Special", "Edit Group" and "Edit Object" are all for editing objects, but they work in different ways. Edit Special and Edit Group have a lot of functionality, and are covered in later chapters found by the links, while Edit Object was covered earlier for a Spike. For many objects, this simply lets you change the object's color as shown there. However, for some objects, such as Triggers, it lets you change their settings.

The button with three colored circles give you quick access to editing a Color Channel, opening a menu that can be used while editing objects. Clicking it another time switches to a HSV menu. As mentioned earlier, "Deselect" is simply used to deselect selected objects.

Finally, we have "Go To Layer", which is closely tied to the arrows and number below it. The pink arrows allow you to switch between different layers to build on, making it easier to organize more complex constructions. You can only access objects on a specific layer for editing or deletion if you are on it. However, you can also toggle editing or deleting a layer by clicking on top of the number, which locks the layer's objects from being changed. Click it again to unlock it. As for the blue arrow on the left, this simply returns you to the "All" layer, which shows every layer together. While in here, you can select an object and click "Go To Layer" to go its specific layer quickly.