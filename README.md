# Town Of Us Toggle

Enable/Disable **Town Of Us** mods in **Among Us** effortlessly.  
Simply place the script in your game directory and double-click it to toggle the mods on or off.  

> The mods are **disabled** if they are in the `mods` folder, and **enabled** if they are in the game directory.

---

## Features

- **Easy Toggle**: Quickly switch between enabling and disabling the **Town Of Us** mod.
- **Automatic Detection**: The script detects whether the mod files are in the game directory or the `mods` folder.
- **Customizable**: Edit the script to include additional files or folders if needed.

---

## Installation

1. **Download the Script**:
   - Download the `ToU-Toggler.bat` file from the repository.

2. **Place the Script**:
   - Move the `ToU-Toggler.bat` file into your **Among Us** game directory.  
     (Example: `C:\Program Files (x86)\Steam\steamapps\common\Among Us`)

3. **Run the Script**:
   - Double-click `ToU-Toggler.bat` to toggle the mods:
     - If the mod files are in the game directory, they will be moved to the `mods` folder (disabling the mod).
     - If the mod files are in the `mods` folder, they will be moved back to the game directory (enabling the mod).

---

## How It Works

The script moves the following files/folders between the game directory and the `mods` folder:

- **Folders**:
  - `BepInEx`
  - `dotnet`
- **Files**:
  - `doorstop_config.ini`
  - `steam_appid.txt`
  - `winhttp.dll`

When the script runs:
- If the files/folders are in the game directory, they are moved to the `mods` folder (disabling the mod).
- If the files/folders are in the `mods` folder, they are moved back to the game directory (enabling the mod).

---

## Customization

If you want to add or remove files/folders from the script, edit the following lines in `ToU-Toggler.bat`:

```batch
set "FOLDERS=BepInEx dotnet"
set "FILES=doorstop_config.ini steam_appid.txt winhttp.dll"
```

Add or remove items as needed, ensuring the names match exactly.

---

## Credits

This script was created with the help of **DeepSeek-V3** AI. Special thanks to DeepSeek for the assistance in debugging and simplifying the script!

---

## Support

If you encounter any issues or have suggestions, please open an issue on the [GitHub repository](https://github.com/okayah/town-of-us-switcher/issues).
