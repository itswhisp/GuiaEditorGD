## Editar Grupos
"Edit Group" is one of the most important buttons in the game. It is found on the right side of the editor when the object(s) you want to edit are selected. This menu is what enables you to change attributes of your objects through various options, as well as adding Group IDs to link to Triggers.

![](https://guia.jorge603.xyz/assets/img/figures/58.png)
*Figure 6.1: The "Edit Group" tab with default settings.*<br>

### Functionality
The options are used to set editor layer, assign Group IDs, change the Z position, set the Order, and set up Channels. Here is a list of all the settings seen in figure 6.1 and a short explanation of what they do.

- **Editor L and Editor L2:** These options place objects at different editor layers. Objects will appear on both editor layers once set. If "Editor L2" is 0, however, the objects will only appear on the layer set in "Editor L". You can use the "+" buttons to get the lowest layer that has no objects placed on it.
- **Z Layer:** Seen at the bottom, this is used as the drawing order of objects. In order of increasing priority, it goes from "B5" to "T4" selected by the buttons. Objects in layers starting with a "B" are below the player, while objects in layers starting with a "T" are above the player. When multiple selected objects are in different "Z Layers", you can use the "+" and "-" buttons to move everything up or down one step in layer respectively. To change the drawing order of objects even further, see below.
- **Tileset:** This term is not directly seen in figure 6.1, but its value marked to the right of "Z Layer" in parentheses. It specifies the tileset number of the selected object(s). For similar types of objects, this will typically be the same value. For different types of objects in the same "Z Layer", the tileset value specifies its priority. Within the same "Z Layer", an object with a lower tileset number is always drawn above one with a higher value. To bypass this, you can move the object with a higher value to a higher "Z layer". See figure 6.2 for an example.
- **Z Order:** Seen in the top right of figure 6.1, this sets the drawing order of objects that are in the same "Z Layer" and also have the same tileset number. If this is the case, putting a higher "Z Order" makes it drawn on top. You can input positive and negative values in this field.
- **Add Group ID:** Assign up to ten Group IDs, which you can later use in other Triggers. How to use Group IDs is covered later in this chapter.
- **ORD:** This option only appears for Gameplay Objects and Triggers. It sets an Order in which the objects get activated.
- **CH:** This option only appears for Gameplay Objects and Triggers. It assigns a Channel to the objects, which are used for Rotate Gameplay Triggers to work with different gameplay directions. See Channel System for more information.

Copy and paste settings from different objects using the "Copy" and "Paste" buttons in the top right. The "Extra" and "Extra2" categories have special options, and are covered below.

![](https://guia.jorge603.xyz/assets/img/figures/59.png)
*Figure 6.2: Tileset values deciding order.*<br>

### Using Groups
Group IDs are essential for Trigger usage. You can add up to ten Group IDs to a specific object. To assign a Group ID to objects, enter the Group ID you want to add into the number field and click the "Add" button. The number will be added to the window below in gray, as seen in figure 6.3. Clicking the "Next Free" button inputs the lowest Group ID value that has not been used in the level yet

![](https://guia.jorge603.xyz/assets/img/figures/60.png)
*Figure 6.3: Adding a Group ID.*<br>

To remove a Group ID, simply click the one you want to remove. If you have a single object selected, a new "P" button appears next to "Add". This is used to mark the object as Group Parent ID. After clicking the "P" button, the corresponding Group ID will show in pink instead of the normal gray, as seen in figure 6.4. You can use Group Parent IDs for different Triggers.

![](https://guia.jorge603.xyz/assets/img/figures/61.png)
*Figure 6.4: Assigning a Group Parent ID.*<br>

### Extra Options
Extra options are in the "Extra" and "Extra2" buttons on the right side of the menu. These tabs have many options that change the attributes of objects, some of which are only accessible if the selected object is a Gameplay Object or Trigger, and others are only useful for Platformer. Here is a list and a short explanation of the options in "Extra" do:

- **Dont Fade:** Disables fading in and out when entering and exiting the screen. This is default behavior for all visible objects.
- **Dont Enter:** Disables any applied Enter Effects.
- **No Effects:** This option deactivates the effects of Portals. Some examples include the Background lightning for Size Portals and gravity lines for Gravity Portals.
- **Group Parent:** Sets an object as a Group ID Parent, which is used for scaling and rotating objects.
- **Area Parent:** Marks an object as the Area Parent, which can be used for Area Triggers.
- **Dont Boost Y/Dont Boost X:** Disables the player being boosted by a moving object for the given axis.
- **High Detail:** Marks an object as High Detail. Objects marked as High Detail get disabled when the player enables the Low Detail Mode on the level page. This is useful if your level has a lot of extra, unnecessary details that can lead to poor performance for some users.
- **NoTouch:** Disables interactions between the player and the objects
- **Passable:** You can jump through solid objects but land on them from the top.
- **Hide:** Makes objects invisible.
- **NonStickX/NonStickY:** Only usable for Platformer. The player will stick to moving objects by default. This option removes the friction so the player does not stick to the objects.
- **ExtraSticky:** When the player stands on an object that moves down too fast, the player will not stick to the block anymore. This option increases how sticky it is.
- **Extended Collision:** Objects with a scale larger than a value of 6 have inaccurate hitboxes. This option fixes the hitbox to be accurate again. Note that this does not apply to the visuals of objects.
- **IceBlock:** Only usable for Platformer. This option makes blocks slippery, so the player slides further. Controls are also harder.
- **GripSlope:** By default, the player can not slide up steep slopes and will slide down instead. With this option enabled, the player has more grip on slopes so that they can slide up.
- **NoGlow:** Disables the glow emitted from solid objects and Spikes, as seen in figure 6.5.

![](https://guia.jorge603.xyz/assets/img/figures/62.png)
*Figure 6.5: Two Monsters with "NoGlow" disabled and enabled respectively.*<br>

- **ScaleStick:** By default, the player's X position will not change when standing on a scaling object. With this option enabled, the player's position moves the corresponding distance from the scale center.
- **NoParticle:** Disables the particles on Orbs and Portals.
- **Center Effect:** When previewing Triggers with "Touch Trigger" enabled in the editor, the effect spawns when the player touches the Trigger at all. With this option enabled, it will only spawn when at the Trigger center.
- **Single PTouch:** This option is used for Rotate Gameplay Triggers and Dual Mode. If one of the players touches the Trigger, only that one is affected.
- **No Audio Scale:** Disables pulsing for both Orbs and Pulsing Objects. See the figure below.

![](https://guia.jorge603.xyz/assets/img/figures/63.png)
*Figure 6.6: Orbs with "No Audio Scale" off and on respectively.*<br>

### Special IDs
Special IDs are in the "Extra2" tab and are used for some Triggers. They have no effect on their own. Here is a list of all the Special IDs and a short explanation of their usage.

- **Enter Channel:** Enter Channel IDs are used for Enter Effects and Custom Enter Effects, which are covered in greater detail later. You can click the "+" button to get the lowest Enter Channel ID that is unused.
- **Material:** You can assign Material IDs to objects for set events upon interaction. For example, you can add a Material ID to all ground blocks and use it in Event Triggers to Trigger a stone sound whenever the player lands on them.
- **ControlID:** This option is only available for Gameplay Objects and Triggers. Control IDs are used to reference specific objects when using the remapping setting in Spawn Triggers.

When using "Edit Group" with a Trigger, additional options "EDP" and "EDO" show below the "Extra" buttons. "EDP" stands for editor preview, and it enables "Touch Trigger" Triggers while playtesting. "EDO" stands for editor playback object, which makes music playtesting start from this Trigger.