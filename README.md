# Radiant++

## by: mr.AsteRisk
## Batch Automation Fixes for Call of Duty: Black Ops III Radiant Tools

This repository contains a powerful PowerShell script designed to automate several essential tasks for modders and developers working with Call of Duty: Black Ops III Radiant Tools. Developed by Asterisk, this tool aims to streamline the workflow for editing and managing game files, ensuring a smoother and more efficient modding experience.

## Features

- **T7 Patch Execution**: Automatically runs the T7 patch to update Radiant Tools with a single command.
- **VK Radiant 2024 File Management**: Facilitates the movement and overwriting of VK Radiant 2024 files to the Black Ops III directory, ensuring your tools are up to date.
- **Zone Map Files Fixing**: Offers a drag-and-drop interface for fixing Zone Map files, supporting up to 100 `.fast` or `.zone` files in a single operation.

## How to Use

1. Download the PowerShell script from this repository.
2. Right-click on the script and select "Run with PowerShell". Ensure you have administrative privileges.
3. Follow the on-screen prompts to select the operation you wish to perform:
   - **1**: Run the T7 Patch.
   - **2**: Move VK Radiant 2024 Files.
   - **3**: Fix Zone Map Files.
   - **4**: Exit the application.

### Running T7 Patch

- The script will automatically locate and execute the T7 patch included in the "\B03 Radiant Fix Files" directory.

### Moving VK Radiant 2024 Files

- If the Black Ops III directory is not found in the default Steam installation path, you will be prompted to enter the correct path.

### Fixing Zone Map Files

- You will be prompted to drag and drop the `.fast` or `.zone` files you wish to fix. The script will process each file through `ZoneFix.exe` and return them to their original directory.

## Additional Information

This tool is designed to be flexible and user-friendly, accommodating both novice and experienced modders. If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

For more tools and projects by Asterisk, visit [PGD Developments](https://pgd-developments.w3spaces.com).

---

&copy; Asterisk | [PGD Developments](https://pgd-developments.w3spaces.com)
