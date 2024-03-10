## Objetos Animados

### Description
Animated Objects are in the seventh tab. Each object here consists of several frames, which the game cycles through and loops forever to create animations. The most complex Animated Objects are particles, which can be customized in the Particle Editor. Many Collectable Objects are animated as well and have similar settings. The first page of the tab is seen here:

![](https://guia.editorgd.xyz/assets/img/figures/45.png)
*Figure 4.1: The Animated Objects tab.*<br>

### Monsters
As seen above, the first 5 objects in the tab are various Monsters. Once placed, these do different default animations. However, they can be customized using the Animate Trigger covered later. To use the Animate Trigger on a Monster, you have to assign it a Group ID. Select the Monster you want to change the animation of and click the "Edit Group" button found on the right. In this menu, enter a value in the "Add Group ID" field. "Next Free" is helpful to find an unused Group ID. To assign that value, click the "Add" button, as seen in figure 4.2. You can use the same Group ID for different kinds of Monsters. However, their animation cycles may not align with each other, resulting in unwanted results. Because of this it is recommended to use a different Group ID for every kind of monster. You can find more information about Groups and Triggers in the later chapters.

![](https://guia.editorgd.xyz/assets/img/figures/46.png)
*Figure 4.2: "Edit Group" menu with a Group ID assigned.*<br>

### Edit Special
The objects beyond the Monsters do not let you change to another animation specifically, but you can use "Edit Special" to customize its default animation in some ways. To do so, select the objects you want to edit and click the "Edit Special" button found to the right. The menu will look like this:

![](https://guia.editorgd.xyz/assets/img/figures/47.png)
*Figure 4.3: Default animation settings.*<br>

All options change different attributes of the animation cycle. Here is a list of all options and what they do:

- Randomized Start: By default all Animated Objects start on their first frame. With this option enabled, the first frame is random, and the animation will continue normally from that point.
- Use Speed: Uses a custom speed for the animation, which gets configured with the slider below. A speed below 1.00 is slower than default, while a speed above 1.00 is faster. You can input negative values to reverse the animation.
- Animate on Trigger: The objects freeze on the first frame. They begin their animation when an Animate or Spawn Trigger Triggers them.
- Disable Delayed Loop: Some objects get delayed before looping. This option instantly starts the next loop.
- Disable AnimShine: Some Animated Objects have a white flash at the start of their animation, which gets deactivated with this option.
- Only if active: Addition to the "Animate on Trigger" option. With this option, the "Animate on Trigger" option will only play if the object is active. If the animation is not active while an Animate or Spawn Trigger Triggers it, the animation will instead begin once the object is active again.
- Single Frame: The animation will not play and instead only display a single frame of the animation, which gets chosen with the number field below.

### Particle Editor
The Particle Editor allows you to create your own set of particles. To get started, you first have to place its object. It is the first object in the tab, seen as a white "P" and shown in figure 4.4

![](https://guia.editorgd.xyz/assets/img/figures/48.png)
*Figure 4.4: Particle Editor object.*<br>

While having this object placed and select, you can access the Particle Editor by clicking the "Edit Special" button on the right. This opens the menu in figure 4.5. In here, you can configure different attributes of your particles, such as their movement, color, texture, and more.

![](https://guia.editorgd.xyz/assets/img/figures/49.png)
*Figure 4.5: The Particle Editor with default settings.*<br>

In the following sections we will go through all the tabs and explain what every option does. You can copy and paste configurations from different particles by using the "C" and "P" buttons at the top

First, we have the "Motion" tab, which configures the particles' movement. You can edit the motion of your particles in "Gravity" or "Radius" mode. Depending on what mode you choose, you will have different options available.

![](https://guia.editorgd.xyz/assets/img/figures/50.png)
*Figure 4.6: The options in the "Motion" tab.*<br>

- **Max Particles:** The amount of particles that can be visible at once.
- **Duration:** How long particles will be generated. "-1.00" means they will spawn forever, which you can input by clicking the "Inf." button to the right.
- **Lifetime:** How long particles are visible before they disappear.
- **Emission:** At what rate particles spawn. You can click the "Max" button for the highest possible rate or click the "Calc" button to use the "Max Particles" and "Lifetime" values to generate them at an even rate.
- **Angle:** The angle at which the particles will go. A value of "0" means right, "90" down, "180" left, and so on.
- **Speed:** The speed at which the particles go from the center.
- **PosVar:** Position variables indicate the space in which the particles can
spawn.
- **Gravity:** This applies a gravity force to the particles. The higher the value, the stronger the force. Positive values make the gravity go right and up, while negative values make the gravity go left and down, depending on what slider you choose.
- **AccelRad:** Refers to the radial acceleration of the particles.
- **AccelTan:** Refers to the tangential acceleration of the particles.
- **StartRad:** This option is only available in "Radius" mode. It sets the start radius of the particles.
- **EndRad:** This option is only available in the "Radius" mode. It sets the end radius of the particles.
- **RotSec:** This option is only available in the "Radius" mode. It refers to rotations per second.

Next is the "Visual" tab, which lets you change how the particles look. The start and end colors are customized in the top left.

![](https://guia.editorgd.xyz/assets/img/figures/51.png)
*Figure 4.7: The options in the "Visual" tab.*<br>

- **StartSize:** The size the particles have when they spawn.
- **EndSize:** The size the particles have when they despawn.
- **StartSpin:** The rotation of the particles when they spawn.
- **EndSpin:** The rotation of the particles when they despawn.
- **Start R/G/B:** Percentage of red, green, and blue values when the particles spawn.
- **Start A:** Opacity when the particles spawn.
- **End R/G/B:** Percentage of red, green, and blue values when the particles despawn.
- **End A:** Opacity when the particles despawn.

In the "Extra" tab, seen below, various other configuration can be done

![](https://guia.editorgd.xyz/assets/img/figures/52.png)
*Figure 4.8: The options in the "Extra" tab.*<br>

- **Free:** With this option enabled, you do not move the particles but pan the camera around.
- **Relative:** With this option, particles do not move when you move the object but spawn at the new position.
- **Grouped:** With this option, all particles move when you move the object.
- **Fade in/out:** Fade time for the particles to appear and disappear.
- **FrictionP:** Adds friction to the particles.
- **FrictionS:** Adds friction to the particle speed.
- **FrictionR:** Adds friction to the particle rotation.
- **Respawn:** Modifies the rate at which particles respawn.
- **Additive:** This is comparable to the blending option for Color Channels.
- **Start Size = End:** The particles have the same size at the end as the start.
- **Start Spin = End:** The particles have the same rotation at the end as the start.
- **Start Rad = End:** Changes the "StartRad" value to be the end instead of the start. This option only works in "Radius" mode.
- **Start rot is dir:** The rotation of the particles when they spawn is the direction they will go towards.
- **Use obj color:** Particles use Color Channels instead of the color specified in the visual tab.
- **Uniform obj color:** Makes the beginning and ending colors the same.
- **Dynamic rotation:** The particles rotate to face towards the direction they are going.
- **Animate on Trigger:** The objects freeze on the first frame. They begin their animation when an Animate Trigger Triggers them.
- **Animate Active Only:** Addition to the "Animate on Trigger" option. With this option, the "Animate on Trigger" option will only play if the object is active. If the animation is not active while the Animate Trigger is activated, the animation will instead begin once the object is active again.
- **Order Sensitive:** Orders particles with newest ones on top.
- **StartRGB Var Sync:** Syncs the "Start R/G/B" values from the "Visual" tab.
- **EndRGB Var Sync:** Syncs the "End R/G/B" values from the "Visual" tab.
- **Quick Start:** By default, the particles will start slowly before reaching their normal movement. With this option, normal movement is achieved instantly.

In the "Texture" tab, the actual texture of your particle is chosen. Note that for textures with a Base Color other than white, such as the Difficulty Faces, the particle color has to be white. Choosing a color other than white will tint the colors, which may lead to unwanted results. Based on prior settings, the particles may even disappear if you choose black for the particle color

![](https://guia.editorgd.xyz/assets/img/figures/53.png)
*Figure 4.9: The options in the "Texture" tab.*<br>

The Particle Editor preview is on the left half of the settings menu. In this editor, you can configure motion options by dragging lines around and positioning the particles at different locations. The default version of the editor looks like figure 4.10, but it will automatically update the motion, color, and texture depending on prior configurations.

![](https://guia.editorgd.xyz/assets/img/figures/54.png)
*Figure 4.10: The motion editor.*<br>

All buttons allow you to modify different parts of the motion. Choose the mode by clicking on the corresponding button. If no button is enabled, you can move the particles inside the editor. Their movement depends on the "Free", "Relative", and "Grouped" options from the "Extra" tab.

The first button, "1", edits the "PosVar" values in "Gravity" mode, and the "StartRad" value in "Radius" mode. You can change them by clicking on the green line and moving it around to scale it, as seen in figure 4.11. If you click on an edge, you can change the size on the corresponding axis. If you click on a corner, the size will change relative to the corner position in the square.

The first button, "1", edits the "PosVar" values in "Gravity" mode, and the "StartRad" value in "Radius" mode. You can change them by clicking on the green line and moving it around to scale it, as seen in figure 4.11. If you click on an edge, you can change the size on the corresponding axis. If you click on a corner, the size will change relative to the corner position in the square.

The third button, "3", edits the "Angle" value in both modes, as well as the "Speed" value in "Gravity" mode. You can change them by clicking somewhere in the editor and moving around. The angle will change to the angle between the center and your click, and the speed will adjust depending on how far the mouse is from the center. The angle is indicated by the rounder yellow line, while the speed is indicated by the straight yellow line, as seen in figure 4.11.

The "C" button recenters the particles if you moved them around, and the last, colored button changes the background color of the editor.

![](https://guia.editorgd.xyz/assets/img/figures/55.png)
*Figure 4.11: Using button 1, 2 and 3 to change motion settings in "Gravity" mode.*<br>