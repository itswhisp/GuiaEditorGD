## Edit Song
Edits attributes of a song, such as volume, speed and also allows for proximity options.

- **Channel:** The Channel you want to edit the song of.
- **Duration:** How long it should take for the song to change to the new settings.
- **Speed:** Changes the speed of the song. Note that you have to enable the "Change Speed" button for the speed to actually change.
- **Volume:** Changes the volume of the song. Note that you have to enable the "Change Volume" button for the speed to actually change.
- **Stop/Stop Loop:** "Stop" stops the song entirely, while "Stop Loop" stops the looping of the song, so it will stop the next time it reaches the end.
- **Group ID 1:** Used for proximity. This is the Group ID where the distance should be drawn from.
- **Group ID 2:** Used for proximity. This is the Group ID the distance will be measured to. For example, if your "MinDist" is 60, the "VolNear" volume will be played when the Group ID is within 6 blocks of Group ID 1. Choosing "P1", "P2", or "Cam" from the buttons below turns Group ID 2 into Player 1, Player 2, or the camera center respectively.
- **VolNear/VolMed/VolFar:** Volume near, medium, and far away for proximity. "VolNear" means you are within the "MinDist" boundaries from Group ID 1, while "VolMed" refers to "Dist2" and "VolFar" to "Dist3".

![](https://guia.editorgd.xyz/assets/img/figures/119.png)
*Figure 7.33: Proximity settings.*<br>

- **MinDist/Dist2/Dist3:** Sets the boundaries for "VolNear", "VolMed", and "VolFar" respectively. Above is an example with "MinDist" set to 30 and both "Dist2" and "Dist3" set to 20. "MinDist" refers to the closest length and is drawn in red, while "Dist2" refers to the middle length and is drawn in green. Finally, "Dist3" refers to the furthest length and is drawn in blue. The distances stack with each other. For example, if your "MinDist" is 20 and your "Dist2" is 30, the "Dist2" circle will be drawn 5 blocks from the object in Group ID 1, and not 3 blocks.

The various arrow buttons indicate how proximity is handled. Here are all options and how their sound is drawn. The distance options will be drawn from the Group ID 2 object (in this case Player 1) towards the arrow direction. In these examples, black is equal to the highest volume and gray is equal to the lowest.

*Table 7.2: Proximity buttons.*<br>

| ![](https://guia.editorgd.xyz/assets/img/figures/91.png) | ![](https://guia.editorgd.xyz/assets/img/figures/92.png) |
| -------------------------------------------------------- | -------------------------------------------------------- |
| ![](https://guia.editorgd.xyz/assets/img/figures/95.png) | ![](https://guia.editorgd.xyz/assets/img/figures/96.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/120.png) | ![](https://guia.editorgd.xyz/assets/img/figures/121.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/99.png) | ![](https://guia.editorgd.xyz/assets/img/figures/100.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/103.png) | ![](https://guia.editorgd.xyz/assets/img/figures/104.png) |
| ![](https://guia.editorgd.xyz/assets/img/figures/122.png) | ![](https://guia.editorgd.xyz/assets/img/figures/123.png) |
| ![](https://guia.jorge603.xyz/assets/img/figures/109.png) | ![](https://guia.jorge603.xyz/assets/img/figures/110.png) |