import subprocess

play_icon = "<span></span>"
pause_icon = "<span></span>"

max_length = 20


def truncate_text(text, max_len):
    return text[:max_len] + "..." if len(text) > max_len else text


def get_playerctl_output(command):
    try:
        output = subprocess.check_output(command, shell=True, text=True)
        return output.strip()
    except subprocess.CalledProcessError:
        return None


players = get_playerctl_output("playerctl -l")
if not players or "No players found" in players:
    exit(0)

tooltip = (
    f"Track: {get_playerctl_output('playerctl metadata xesam:title')}\n"
    f"Artist: {get_playerctl_output('playerctl metadata xesam:artist')}\n"
    f"Album: {get_playerctl_output('playerctl metadata xesam:album')}"
)
status = get_playerctl_output("playerctl status")
metadata = get_playerctl_output(
    "playerctl metadata --format '{{ title }} - {{ artist }}'"
)
metadata = truncate_text(metadata, max_length)

if metadata:
    if status == "Playing":
        metadata = f"[ <span color='#9ccfd8'><span font='bold'>{pause_icon}</span> {metadata}</span> ]"
    elif status == "Paused":
        metadata = f"[ <span color='#f6c177'>{play_icon} {metadata}</span> ]"
    print(f'{{"text": "{metadata}", "tooltip": "{tooltip}"}}')
else:
    print('{"text": "No music playing"}')
