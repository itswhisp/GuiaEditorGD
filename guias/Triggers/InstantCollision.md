## Instant Collision
Instant Collision Triggers function similarly to Collision Triggers, however it is
only checked on Trigger activation if the condition is true or false. Normal
Collision Triggers check if the condition is true all the time.

- **BlockA ID/BlockB ID:** Groups of Block 1 and Block 2, one of which has to
have the "Dynamic Block" option enabled.
- **True ID/False ID:** The Group ID that gets spawned if "BlockA ID" and
"BlockB ID" collide or do not collide respectively in the moment the Trigger
is activated.
- **P1/P2/PP:** Enabling "P1" or "P2" allows triggering upon Player 1 or 2
colliding with "BlockB ID" respectively. Enabling both options allows for
triggering when either player collides with it. "PP" triggers the Group ID
when both players collide with each other in Dual Mode.
