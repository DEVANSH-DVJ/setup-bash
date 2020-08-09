# setup-bash-xenial
Bash scripts used to set Ubuntu 16.04.6 on my Laptop.

Old : Run scripts inside folders in respective order. (Tested but not deprecated)

New order: (Yet to be Tested)
1. Primary Setup
   1. Run Primary Setup.sh
   2. Make changes to the Settings (settings/)
   3. Continue to Step 2
2. Windows connection
   1. Run windows/Windows-1.sh
   2. **Reboot**
   3. After restarting, Run windows/Windows-2.sh
   4. Configure Rhythmbox
   5. Continue to Step 3
3. Basic Tools
   1. Run git.sh and configure ssh key.
   2. Run Basic Tools.sh
   3. Once terminator is installed, customize the Prefernces
   4. Once Chrome is installed, sync the account and customize the settings.
   5. Once Opera is installed, get the bookmarks and customize the settings
   6. **Reboot** and move to Step 4
4. Python
   1. Run python.sh
   2. Check each environment during Step 5.
5. Add-ons
   1. Run Add-ons.sh
   2. Check packages in Atom
   3. Install Extensions for VSCode
   4. While the big installs happen, configure unity-tweak-tools
   5. Once the driver is installed, configure the changes.
   6. Once ros is installed, setup robosub repo using robosub.sh
   7. **Reboot**

Note: Run all bash scripts from the base directory of this repo.
