## ShockWave
Creates a shockwave effect.

![](https://guia.jorge603.xyz/assets/img/figures/133.png)
*Figure 7.39: The Shockwave Trigger.*<br>

- **Speed:** The speed at which the shockwave will happen.
- **Strength:** How strong the shockwave is. The lower the value, the less distorted objects get.
- **Thickness:** The "thickness" of each wave. The higher the value, the thicker the wave will be.

![](https://guia.jorge603.xyz/assets/img/figures/134.png)
*Figure 7.40: ShockWave Trigger example.*<br>

- **WaveW:** Wave width. The higher the value, the less distorted it is.
- **FadeIn/FadeOut:** Fades the shockwave in and out. The higher the value, the longer it takes to fade in or out respectively.
- **TimeOff:** Time offset before the shockwave starts, with the value being in seconds.
- **MaxSize:** Modifies the max size of the wave. Leaving it at 0 will put it at the max value. The value you put here will be multiplied with the wave size.
- **Invert:** Inverts the shockwave effect to go from outside to inside instead of inside to outside.
- **Inner:** Size of the waves in the middle of the shockwave. Option only available with "Invert" enabled.
- **Outer:** Size of the waves at the outside of the shockwave. Higher values means it will take longer to reach the center. Option only available with "Invert" enabled.
- **Target:** Chooses a Group ID as the center of the shockwave. The Group ID can only consist of one object.
- **P1/P2:** Makes Player 1 or Player 2, respectively, the center of the shockwave. Option only available with "Target" enabled.
- **Follow:** Follows "Target". By default, it will only check the position of the target when the Trigger is activated and spawn the shockwave there. With this option enabled, the center will follow the target. Option only available with "Target" enabled.
- **Relative:** The shockwave follows the screen movement. By default, it will stay at the position it was triggered at.
- **Screen OffX/Screen OffY:** Offsets the center of the shockwave. Negative numbers offset it to the left or bottom respectively, while positive numbers offset it to the right or up respectively.