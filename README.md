# Audio-Sleep-Inhibitor

A script from [**u/ipsirc**](https://www.reddit.com/user/ipsirc/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button) that automatically blocks sleep when an audio is playing at the background. It works by scanning the device if there's an audio from a minimized music player, website or video player and blocks the sleep function till the audio stops. It works on any PC that runs on Linux but as of now, it is only tested on 1 Linux distro as that is the distro that my laptops currently use (may a thinkpad magically appear in my room lol). It is similar to how Windows won't let the PC sleep when an audio is playing even if those apps or software are minimized.

# How to Install and Use
1. Install the script file.
2. Open Dolphin or your preferred file manager and open usr/local/bin as Administrator.
3. Copy paste the script in this folder.
4. Open terminal and type "sudo chmod +x /usr/local/bin/audio-sleep-inhibitor.sh"
5. Open Autostart from Application Manager or System Settings > scroll to the lowest part > Autostart.
6. Click "+ Add New" and "Login Script".
7. Locate the script and double click it.
8. Logout or Restart your PC (recommended).

## Tested Linux Distros and Versions
- Fedora KDE 42 and 43

# Possible updates in the future (if I get bored enough)
- Allow the power button to instantly sleep the PC while an audio is playing.

This is purely for personal use but anyone can use and improve it. 

### HUUUUUUGE THANKS to u/ipsirc for this script!
