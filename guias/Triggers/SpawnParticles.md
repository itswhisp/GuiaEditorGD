## Spawn Particles
Spawns particles upon activating the Trigger. Note that the particles you want to spawn cannot have an infinite duration, and that the Trigger will spawn the particles once on activation and not loop like normal.

- **Particle Group:** Group ID of the particles you want to spawn at the "Position Group". It can consist of multiple particles.
- **Position Group:** Position at which the particles will spawn. This Group ID can only consist of one object.
- **Offset X/Y:** Offsets the position the particles are spawned at relatives to "Position Group". A positive value adds an offset right and up respectively, and vice versa. Note that one block is equal to 30.
- **OffVar X/Y:** Adds a variance for the particle target position. This basically means that the particles will spawn in a random location within these boundaries. Note that one block is equal to 30, and that the value is drawn in both directions.
- **Rotation:** Changes the rotation of the particles.
- **Scale:** Changes the scale of the particles.
- **Match Rot:** Makes the rotation of the spawned particles match. Only useful when "Particle Group" contains multiple particles without rotation set in their own settings.

![](https://guia.editorgd.xyz/assets/img/figures/118.png)
*Figure 7.32: Example usage of the Spawn Particle Trigger.*<br>
