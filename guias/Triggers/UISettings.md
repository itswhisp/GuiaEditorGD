## UI Settings
Marks objects as user interface and puts them on a UI layer which is in front of everything else, including the Ground. The UI layer is permanent and cannot be edited.

- **Group ID:** The objects that get marked as UI.
- **UI Target:** This Group ID is marked as the camera center reference and can only consist of one object.
- **XRef/YRef:** The reference points for aligning the object. - **Auto/Center/Left/Right/Top/Bottom: **"Auto" aligns objects based on the camera edges of the "UI Target" object. "Center" uses the center of the object as the camera center. "Left" uses the object as the left edge of the camera, while "Right" uses the object as the right edge of the camera. Similarly, "Top" uses the object as the top edge of the camera, while "Bottom" uses the object as the bottom edge of the camera.
- **Relative:** The position of the UI will scale with the screen aspect ratio

![](https://guia.jorge603.xyz/assets/img/figures/125.png)
*Figure 7.34: Screen references for the UI Settings Trigger.*<br>