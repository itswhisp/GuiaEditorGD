## Touch
Touch Triggers are used to enable or disable a Group ID upon player touch. Touch Triggers also function as Spawn Triggers, meaning that they can spawn other Triggers. By default, the Touch Triggers switch between disabling and enabling an object on player touch. It is worth noting, that moving left and right also count as a player touch in Platformer, despite the player not jumping.

- **Group ID:** The Group ID you want to enable, disable, or spawn.
- **Hold Mode:** Changes to enable the Group ID while the player holds, and disabling when the player releases. By default the Touch Triggers switch between disabling and enabling an object on player touch.
- **Dual Mode:** This is an obsolete option from 2.1, which disables counting inputs from player 2. Avoid using this option and use "P1/P2 Only" instead.
- **P1/P2 Only:** Only counts touches from one player instead of both.
- **Toggle On/Off:** Toggles a Group ID on or off when the player touches. For example, if you enable "Hold Mode" and "Toggle Off", holding will disable the object and releasing will enable it. If you want to spawn a Group ID on player touch, you should enable the "Toggle On" option.