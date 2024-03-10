## SFX
You can choose a sound effect (SFX) to play from the menu in the top right of the first page.

- **Reverb:** Reverb is created when a sound occurs in a space, resulting in the SFX changing pitch and echo accordingly. By clicking the "+" button, you can select different spaces for the SFX to occur in.
- **FFT:** Stands for fast Fourier transform. "FFT" is used to determine the fundamental frequencies and therefore pitches that are present in the raw signal.
- **Loop:** Loops the SFX until stopped.
- **Pre** Load: Setting a start time introduces some delay depending on the seek time. If you need the SFX to sync precisely, you can preload it.
- **Start/End:** Start and end of the SFX in milliseconds.
- **FadeIn/FadeOut:** Fades the SFX in and out respectively, with the values being in milliseconds.
- **Unique ID:** Assigns a unique ID to SFX within their respective "SFXGroup". By enabling the "IsUnique" option, you mark the ID as unique, resulting in no other SFX being able to take that ID if it is in the same "SFXGroup".
- **SFXGroup:** You can have several SFX and put them into their own "SFXGroup". This Group ID can later be edited.
- **MinInterval:** Minimum interval before the SFX can be triggered again.
- **Override:** If another SFX has the same "Unique ID" and "SFXGroup", this new SFX will override the old one.
- **Ignore Volume Test:** SFX played at volume 0 are ignored. Enable this option to not ignore them. This is mainly used for the proximity options, where the sound will not play if any distance has a volume of 0.
- **Group ID 1:** Used for proximity. This is the Group ID where the distance should be drawn from.
- **Group ID 2:** Used for proximity. This is the Group ID the distance will be measured to. For example, if your "MinDist" is 60, the "VolNear" volume will be played when the Group ID is within 6 blocks of Group ID 1. Choosing "P1", "P2", or "Cam" from the buttons below turns Group ID 2 into Player 1, Player 2, or the camera center respectively.
- **VolNear/VolMed/VolFar:** Volume near, medium, and far away for proximity. "VolNear" means you are within the "MinDist" boundaries from Group ID 1, while "VolMed" refers to "Dist2" and "VolFar" to "Dist3".
- **MinDist/Dist2/Dist3:** Sets the boundaries for "VolNear", "VolMed", and "VolFar" respectively.

See figure 7.33 and table 7.2 under Edit Song Trigger for more information on proximity