import subprocess


# Function to run playerctl commands
def run_playerctl_command(command):
    try:
        output = subprocess.check_output(["playerctl", command], text=True)
        return output.strip()
    except subprocess.CalledProcessError as e:
        return f"An error occurred: {e.output}"


# Get metadata
def get_metadata():
    metadata = run_playerctl_command("metadata")
    return metadata


# Control commands
def play():
    run_playerctl_command("play")


def pause():
    run_playerctl_command("pause")


def next_track():
    run_playerctl_command("next")


def previous_track():
    run_playerctl_command("previous")


# Example usage
if __name__ == "__main__":
    print("Current track metadata:")
    print(get_metadata())

    # Control playback
    print("Playing...")
    play()
    print("Pausing...")
    pause()
    print("Next track...")
    next_track()
    print("Previous track...")
    previous_track()
