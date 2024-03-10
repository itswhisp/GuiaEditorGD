## Edit SFX
Edits attributes of a sound effect (SFX), such as volume, speed and also allows setting up proximity options.

- **Group ID:** You can give the SFX Triggers you want to edit a Group ID and change them through this field.
- **SFXGroup/UniqueID:** "SFXGroup" and "UniqueID" can be used to reference the exact SFX you want to edit. You should put the same values you put into the SFX Trigger here.
- **Duration:** How long it should take for the SFX to change to the new settings.
- **Speed:** Changes the speed of the SFX. Note that you have to enable the "Change Speed" button for the speed to actually change.
- **Volume:** Changes the volume of the SFX. Note that you have to enable the "Change Volume" button for the speed to actually change.
- **Stop/Stop Loop:** "Stop" stops the SFX entirely, while "Stop Loop" stops the looping of the SFX, so it will stop the next time it reaches the end.
- **Group ID 1:** Used for proximity. This is the Group ID where the distance should be drawn from.
- **Group ID 2:** Used for proximity. This is the Group ID the distance will be measured to. For example, if your "MinDist" is 60, the "VolNear" volume will be played when the Group ID is within 6 blocks of Group ID 1. Choosing "P1", "P2", or "Cam" from the buttons below turns Group ID 2 into Player 1, Player 2, or the camera center respectively.
- **VolNear/VolMed/VolFar:** Volume near, medium, and far away for proximity. "VolNear" means you are within the "MinDist" boundaries from Group ID 1, while "VolMed" refers to "Dist2" and "VolFar" to "Dist3".
- **MinDist/Dist2/Dist3:** Sets the boundaries for "VolNear", "VolMed", and "VolFar" respectively.

See figure 7.33 and table 7.2 under Edit Song Trigger for more information on proximity.