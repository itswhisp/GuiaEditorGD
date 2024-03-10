## Objetos del gameplay

### Description
This chapter handles the sixth tab in the editor, referred to as Gameplay Objects because they affect gameplay or interact with the player in a different way than other objects. These range from giving small boosts through Pads or Orbs to customizing the starting settings further into the level, such as Game Mode and Speed. The first page is seen below. Many of these only work the first time they are interacted with, but you can enable "Multi Activate" in Edit Special or Edit Object to allow multiple interactions. This is useful if your gameplay switches direction, making the player pass by a Gameplay Object several times.

![](https://guia.editorgd.xyz/assets/img/figures/32.png)
*Figure 3.1: The Gameplay Objects tab.*<br>

### Pads
The first 5 objects in the tab are often referred to as Pads. When a player touches one of these, they are affected in some way depending on the type of Pad. The first three give various vertical boosts, while the last two switch gravity in different ways. For the blue one, the gravity switch is natural, keeping horizontal velocity, while the purple one teleports you vertically until an object is hit. This is similar to how Spider works. An illustration of the various Pads, with the player path in green, is shown below. To refer to a specific one, you simply use the color, so the leftmost one is called Yellow Pad.

![](https://guia.editorgd.xyz/assets/img/figures/33.png)
*Figure 3.2: An example of the various Pads.*<br>

### Orbs
Orbs work similarly to Pads, but instead of being activated upon being touched, they have to be clicked by the player. The ones with the same color as in figure 3.2 have a similar effect, as seen in figure 3.3. There is also a Green Orb, which works like a Yellow Orb but also switches your gravity. However, there are five extra Orbs that do not have an equivalent in Pads. These are seen in figure 3.4 with their common names in the figure text. The Black Orb simply pushes you downwards, while the Dash Orbs take you in a straight line in the arrow's direction as long as the player holds down. Once released, the Green Dash Orb keeps the original gravity, while the Pink Dash Orb switches it. The Teleport Orb lets you set a specific object to teleport to when clicked. Finally, the Trigger Orb lets you toggle a specific Group ID.

![](https://guia.editorgd.xyz/assets/img/figures/34.png)
*Figure 3.3: Orbs with similar functionality to Pads.*<br>

![](https://guia.editorgd.xyz/assets/img/figures/35.png)
*Figure 3.4: Black Orb, Dash Orbs, Teleport Orb, and Trigger Orb respectively.*<br>

### Portals
Portals change the gameplay in various ways. Their effect is only activated if the player passes through them. First, we have the Game Mode Portals. These are seen in figure 3.5 below, ordered in the same way as in the start settings: Green is Cube, pink is Ship, red is Ball, orange is UFO, blue is Wave, gray is Robot, purple is Spider, and yellow is Swing. Use these at any point in your level to switch the player's Game Mode. Some Game Modes, such as Ship, have a floor and roof by default. Click "Edit Object" and enable "Free Mode" to remove these.

![](https://guia.editorgd.xyz/assets/img/figures/36.png)
*Figure 3.5: Game Mode Portals.*<br>

In figure 3.6, various other types of Portals are shown. First, on the left, are Gravity Portals. The blue one changes gravity to be normal (down), while the yellow changes it to be upside-down. As for the green one, it switches to the opposite gravity depending on your current gravity. If you are upside-down and go through it, gravity turns normal, and vice versa. This is useful if a part's gravity is dependent on the player's actions and you want to force a gravity switch. After all, if you are in normal gravity and pass through a Blue Gravity Portal, it has no effect since that is already the player's gravity.

![](https://guia.editorgd.xyz/assets/img/figures/37.png)
*Figure 3.6: Gravity Portals, Mirror Portals, Size Portals, and Dual Portals respectively.*<br>

Secondly, we have Mirror Portals, which essentially mirror the entire level. Once activated, this means that instead of going towards the right, the level goes towards the left. The Orange Mirror Portal switches to the left, while the Blue Mirror Portal switches to the right (which is default).

Third are Size Portals. The pink one makes the player's icon smaller in the current Game Mode, often referred to as Mini Mode. This changes the gameplay in some ways depending on the Game Mode, such as jumps being lower and shorter in Cube and Robot. If the Game Mode changes, Mini Mode is still kept until the size is changed back to normal. That is done with the Green Size Portal.

Finally, on the far right, we have Dual Portals. The orange one enables Dual Mode, which duplicates the player's icon into two. Both of these are controlled upon clicking. By default, every click affects both. However, you can enable 2-Player Mode in the level settings, making it so that clicks on each side of the screen control each icon. To switch back to one icon, use the Blue Dual Portal.

### Speed Changers
Speed Changers are pretty self-explanatory, but if you want more details, check Level Settings. As with Portals, they are enabled when a player interacts with them. The blue lines around them (not seen in-game, only in the editor) indicate their hitbox. This is where you have to touch them to change the speed. Naturally, if the Speed is already normal, for example, going through a Blue Speed Changer (one arrow to the right) does nothing

![](https://guia.editorgd.xyz/assets/img/figures/38.png)
*Figure 3.7: Speed Changers.*<br>

### Letter Objects
At the end of the tab, there are various letters inside white squares. These are only visible in the editor itself (and not in-game). They are used in very specific use cases to alter player interactions in some way. In order from first to last, we have Letter Objects with "D", "J", "S", "H", and "F" written on them, which are covered in order here.

![](https://guia.editorgd.xyz/assets/img/figures/39.png)
*Figure 3.8: Usage of D Letter Objects.*<br>

First is "D", which is used when the Game Mode is Wave. As seen in figure 3.8 on the left, the player will normally die when the icon hits a block below it (and similar above it). However, adding D Letter Objects allows the icon to hit the blocks. The placement of these objects decide which blocks are safe.

![](https://guia.editorgd.xyz/assets/img/figures/40.png)
*Figure 3.9: Usage of J Letter Objects.*<br>

The J Letter Object is used to stop jumps when the player holds down in Cube. Many players hold down a little after using an Orb, such as a Blue Orb, and after hitting objects this may lead to an unwanted jump. This is seen on the left in figure 3.9. Adding the J Letter Objects here, holding down from the Blue Orb does not result in a jump. Note that clicking again while on top of these Letter Objects does lead to a jump. This only affects holding.

![](https://guia.editorgd.xyz/assets/img/figures/41.png)
*Figure 3.10: Usage of S Letter Objects.*<br>

By default, using a Dash Orb lets you hold it down as long as you want. The player decides when its action ends by releasing. However, at times it may be wanted to control when a Dash Orb's effect stops. This is done by placing S Letter Objects as seen in figure 3.10. The player can still release before this if they wish, but they cannot use the Dash Orb for longer than the S Letter Object's placement.

![](https://guia.editorgd.xyz/assets/img/figures/42.png)
*Figure 3.11: Usage of H Letter Objects.*<br>

In Cube, jumping into a block above you and "hitting your head" normally
leads to death. Using H Letter Objects stops this. This works the same way if
the gravity is switched, and it also applies for Robot. Last are F Letter Objects,
which switch gravity when you hit your head on them. An example of this is
seen here:

![](https://guia.editorgd.xyz/assets/img/figures/43.png)
*Figure 3.12: Usage of F Letter Objects.*<br>

### Force Objects
Last in the tab are Force Objects, seen as an arrow inside a circle or square. These apply a set force in the direction of the arrow when touched. This means that you can rotate them in the direction you want them to work. The difference between the two lies in the hitbox, which is indicated by the circle and square. Similar to letter objects, these do not show in the level itself, so it is probably smart to find some way to indicate them with decorations. This makes it less annoying for the player. Use "Edit Object" to change various settings, such as the force applied.

![](https://guia.editorgd.xyz/assets/img/figures/44.png)
*Figure 3.13: Usage of Force Objects.*<br>