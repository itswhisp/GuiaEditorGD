# Elegir una cancion

### Starting Song
The majority of the community's favorite Geometry Dash levels are largely due to their great music synchronization, so picking a song is obviously important when creating. To pick one, we head back to the level settings:

![](https://guia.jorge603.xyz/assets/img/figures/24.png)
*Figure 2.1: Picking a starting song in the level settings.*

The bottom of this image is where the starting song of a level is set. By default, it shows "Normal" songs, which are the official main level songs ("Stereo Madness", "Back On Track", and so on). If you want to make a level with one of these songs, use the arrows to go through and stop on the one you want.

Selecting "Custom" instead, we have hundreds of thousands of songs to pick from. Click "Select Custom Song" to open the menu seen in figure 2.2 below. This has various buttons that serve different purposes. For now, we focus on the two circular buttons in the middle, one called "Music Library" and the other being the logo of Newgrounds. This is a website for various user-created content, such as music.

![](https://guia.jorge603.xyz/assets/img/figures/25.png)
*Figure 2.2: Selecting a custom song.*

### Music Library
The Music Library is a new addition in update 2.2, which has many songs handpicked by RobTop for use by the community in levels. Once clicked, the interface below is seen. By default, every song is shown in alphabetical order by their title, which is a lot to scroll through given the song count. (As of writing, it is 6391, seen at the bottom of the menu.) To sort through the library, use the buttons on the sides. On the right side, the first button lets you filter by specific genres, while the second lets you filter by specific artists. As for the left side, there is a search button that lets you search for title keywords

![](https://guia.jorge603.xyz/assets/img/figures/26.png)
*Figure 2.3: The Music Library.*

The figure shows both downloaded and non-downloaded songs. You have to download them to be able to listen to or use them. Once a song is downloaded, click the playtest button to listen to it. Once you have found a song you wish to use from the start of your level, simply download it and click the pink "Use" button. Exiting the Music Library, the selection is now filled in:

![](https://guia.jorge603.xyz/assets/img/figures/27.png)
*Figure 2.4: Custom song selected.*

### Newgrounds
Before 2.2, the main way to select a custom song was through Newgrounds. Clicking its button gives more details on how it works, but you basically have to search a song by its specific ID. The ID is found at the end of its link on the website. For example, imagine that I am a fan of Creo and want to use his song ["Dimension"](https://www.newgrounds.com/audio/listen/709578). Click the link to open the following page:

![](https://guia.jorge603.xyz/assets/img/figures/28.png)
*Figure 2.5: An example of a song in newgrounds.*

Here, you can listen to the song and easily skip around to hear different parts of the song. Browse the "Audio" tab to find other songs to use. Once you have found a song you want to use, you have to write its ID into Geometry Dash. As seen in the top left of the previous example, the link for "Dimension" by Creo ends with "709578". Typing this and clicking "Search" finds the song as seen below. Note that not all songs are available in Geometry Dash. This is something the artist can toggle themselves. The best way to find out is by testing its ID, which will give an error if it is not available for use in the game

![](https://guia.jorge603.xyz/assets/img/figures/29.png)
*Figure 2.6: Searching a newgrounds ID.*

Make sure you click the download button and then "Use" on this screen too. After downloading any songs, whether it is through the Music Library or Newgrounds, you can find them all through the "Saved" button in the bottom right. This is also the case for any songs you download while playing custom levels on the servers. In here, you can easily select a previously downloaded song for use too.

### Song Settings
When picking a song, you may not want to use it from the start but rather from a set point further into the song. Clicking the gear in the top right of the custom song selection menu lets you do this. "Start Offset" is given in seconds, allowing up to 3 decimals, with a playtest button to help you make it as exact as possible. The fade options makes the song fade in at the start or out at the end. Note that these can be used even with a main level song

![](https://guia.jorge603.xyz/assets/img/figures/30.png)
*Figure 2.7: Song settings.*

### Guideline Creator
To help you sync the gameplay and visuals of your level to your song of choice, you can click "Create Lines" in the bottom left. This opens the menu seen below. The text itself gives good steps for how to do it, which is essentially clicking "Record" and then clicking to the song. You can, for example, time each click to the main beat. After you are done, click "Stop" and vertical lines will be shown in the editor to indicate when you clicked. As a result, you can time specific gameplay or visuals to these lines, for example to Pulse Triggers (where a specific color, such as the Background, turns brighter for a split second). Note that you can toggle the guidelines in the Pause Menu.

![](https://guia.jorge603.xyz/assets/img/figures/31.png)
*Figure 2.8: Create vertical editor lines to help you synchronize.*

### Later Customization

The settings covered thus far are all for the starting song. However, the editor lets you change the song further into the level, as well as customizing the current song in many ways. You can, for example, change the speed or edit the volume based on proximity (to the player). Additionally, up to 5 songs can be overlapped at once, giving a lot of possibilities. These customizations are done using the Song and Edit Song Triggers at the point you want them to take effect. Further audio customization is possible using SFX Triggers handled in the same chapter.

With the possible complexity of your level's audio using these Triggers, the Guideline Creator shown above is not as helpful anymore. To handle such cases, you can use BPM Finder within each song's details. Click "More" next to a song and then "BPM" to open its menu. The way it works is similar to the Guideline Creator, but it only finds the BPM for you and does not draw guidelines automatically. Afterwards, you can use a BPM Guide Trigger together with the song's placement in the editor to create guidelines.