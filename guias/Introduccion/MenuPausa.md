## Pause Menu
There are various options and buttons that can customize your experience in the editor. These are mostly found in the Pause Menu of the editor, which is found by clicking the button in the top right. It looks like this:

![](https://guia.editorgd.xyz/assets/img/figures/216.png)
*Figure 12.1: The editor Pause Menu.*<br>

Here, there are a lot of options (seen as checkboxes) and buttons that may or may not be self-explanatory. In this chapter, a small description of each is provided in case you need help. For clarity, the options are shown inside a blue box, while the buttons are shown inside the red boxes.

### Options
These options, shown in blue in figure 11.1, customize the editor view in specific ways. In other words, they have no actual effect on the level itself, but rather the experience of making it. Here is a short description of each one.

- **DebugDraw:** Draws hitboxes for objects that interact with the player. The hitboxes of blocks are drawn in white, while the hitboxes of obstacles, such as saws and Spikes, are drawn in red. In other words, collision with a red line leads to death.
- **Hide Invisible:** Hides objects that are set to be invisible in the editor. (This only affects objects that are set to "Hide" inside Extras of Edit Group.)
- **Preview Mode:** Shows the level close to how it looks in-game when played. This means that you can see how the colors of objects, the Background, Ground, and so on look together while in the editor.
- **Preview Animations:** Shows Animated Objects how they look in-game.
- **Preview Particles:** Shows particles how they look in-game.
- **Preview Shaders:** Shows shader effects how they look in-game.
- **Show Ground:** Shows the Ground. Disabling this is useful if you want to place objects underneath it.
- **Show Object Info:** Shows some information about selected objects. This is seen as text in the top left of the editor. The different abbreviations are as follows: "C" is Color Channel, "C1" is Base Color, "C2" is Detail Color, "G" is grid position, and "EL" is editor layer.
- **Show Grid:** Shows the editor grid.
- **Select Filter:** Lets you use the Group ID and Color Channel filters in the "Delete" tab to select objects (while in the "Edit" tab).
- **Ignore Damage:** Lets you playtest without dying, regardless of the obstacles you touch.

### Buttons
The buttons seen in red in figure 12.1 perform various actions that are helpful
when creating. First are the two buttons in the center at the bottom, which
toggle music guidelines and open this guide, respectively.

- **ReGroup:** If you have selected objects with various Group IDs, you can use this to change all the corresponding Group IDs to use the lowest ones not yet used.
- **Create Loop:** After selecting a Trigger setup, you can click this to create a Spawn Loop for you.
- **Keys:** Shows various key bindings that are useful while in the editor.
- **AlignX/AlignY:** If you have various objects selected, they are all aligned evenly on the X-axis or Y-axis respectively.
- **Build Helper:** If you select various objects in your level, including Triggers, and click this, any already used Group IDs and their references inside Triggers will be distributed to new unused Group IDs. Useful for collaborations where some people may have used overlapping Group IDs.
- **Copy+Color:** Copies the selected objects including all of their Color Channels' starting settings. Useful for copying and pasting across levels. By default, copying and pasting across levels does not include the Color Channel information.
- **Select All:** Selects every object in the level.
- **Paste+Color:** Pastes the objects and Color Channel information after using "Copy+Color".
- **Select All Left/Right:** Selects all objects to the left or right, respectively, of where you are in the editor.
- **Create Extras:** This adds outline objects for certain types of blocks, such as the ones that look like rocks.
- **Unlock Layers:** Unlocks all layers that are locked at once.
- **New GroupX/Y:** Assigns new Group IDs to the selected objects, going from left to right or bottom to top respectively.
- **Reset Unused:** Resets all Color Channels that are not used by any objects.
- **Uncheck Portals**: Unchecks all checked Portals. Checked Portals show the roof and ground boundaries. Not mentioned in this list is the gear in the top right. This is used to customize the editor in various ways. You can, for example, increase the amount of rows or buttons per row for "Build" and "Edit". This is helpful when working with tabs that have many buttons. Additionally, there are many other options that toggle different things in the editor. If you are unsure what an option does, click the information box (seen as an "i" button)

Not mentioned in this list is the gear in the top right. This is used to customize the editor in various ways. You can, for example, increase the amount of rows or buttons per row for "Build" and "Edit". This is helpful when working with tabs that have many buttons. Additionally, there are many other options that toggle different things in the editor. If you are unsure what an option does, click the information box (seen as an "i" button).