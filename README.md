# Logitech Mouse NoRecoil Script for CS2

This script is designed to help control weapon recoil in **Counter-Strike 2 (CS2)** using a Logitech mouse. It simulates small, consistent mouse movements to counteract recoil patterns. **Use this at your own risk**, as using scripts in competitive games may violate game rules and result in penalties.

## Features
- **Customizable Recoil Pattern:** You can define a recoil pattern with `y-axis` movements.
- **Toggle for Recoil Control:** Enable or disable the recoil control using a simple toggle.
- **Adjustable Delay:** Fine-tune the delay between each recoil adjustment for precision.

## How to Use

### Prerequisites
- Logitech Gaming Software (LGS) or G HUB installed.
- A Logitech mouse compatible with scripting.

### Setup Instructions
1. Open the Logitech Gaming Software or G HUB.
2. Navigate to your Logitech mouse settings and select the **Scripting** tab.
3. Copy the provided Lua script into the scripting editor.
4. Adjust the following customizable variables:
   - **`fireKey`**: The mouse button used for firing (`"1"` for left mouse button, `"3"` for middle button, etc.).
   - **`recoilPattern`**: Array of integers representing the downward mouse movement per shot.
   - **`delay`**: Time in milliseconds between each recoil adjustment.
5. Save and apply the script.

### Usage
1. Launch **CS2** and select a weapon.
2. Hold down the assigned firing button to activate the recoil control.
3. Release the button to stop the script.


## Script Variables

| Variable Name   | Description                                                                 | Default Value      |
|------------------|-----------------------------------------------------------------------------|--------------------|
| `fireKey`       | Mouse button to activate recoil control.                                    | `"1"` (Left click) |
| `isRecoilEnabled`| Toggle to enable or disable recoil control.                                 | `true`             |
| `recoilPattern` | Array of `y-axis` movements to counteract weapon recoil.                   | `{5, 5, 5, 4, 4...}` |
| `delay`         | Time delay (in ms) between each movement.                                   | `100`              |

## Code Explanation
- **Recoil Pattern Simulation:** The script moves the mouse cursor downward in small steps defined by the `recoilPattern` array to counteract the in-game weapon's recoil.
- **Toggle Mechanism:** You can enable or disable the recoil control script by setting `isRecoilEnabled` to `true` or `false`.
- **Looping Logic:** The `OnEvent` function listens for mouse button events and triggers the recoil control loop when the fire key is pressed.

## Troubleshooting
- **Script Not Working?**
  - Ensure the Logitech Gaming Software or G HUB scripting environment is enabled.
  - Confirm that the `fireKey` matches your mouse button configuration.

- **Cursor Movement Feels Off?**
  - Adjust the `recoilPattern` or `delay` to better match your weapon's recoil behavior.

## Disclaimer
This script is for educational purposes only. Using cheats or hacks in online games is against the terms of service of most games and can result in bans or other penalties. Use this script at your own risk.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.