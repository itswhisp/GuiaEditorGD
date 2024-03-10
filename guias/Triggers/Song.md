## Song
Changes the song in the middle of a level.

- **Channel:** There are 5 Channels on which a song can play. Songs on different Channels will play simultaneously, while only one song can play on the same Channel. Note that Channels used for music are not the same as Color Channels or the ones mentioned for Rotate Gameplay Triggers.
- **Start/End:** The time (in milliseconds) at which you want the song to start and end.
- **Fade In/Fade Out:** The time (in milliseconds) at which the song should fade in and out.
- **Prep/Load Prep:** Setting a song time introduces some delay depending on the seek time. If you need the song to sync precisely, you first have to "Prep" the Trigger, then "Load Prep" later. "Prep" overwrites any previous "Prep", so if you have multiple Song Triggers, you have to alternate between loading them. For example, "Prep" and "Load Prep" for the first, "Prep" and "Load Prep" for the second, and so on