# hpanal
HP Analytics Native App Liberator is a script that stops and remove HP Analytics, a forcefully preinstalled Windows software on HP computers. In addition to occupying unnecessary memory space, these programs can collect user information, behaviors, network captures, and an array of data under the guise of providing better user service. HP does not provide any valid means to disable or uninstall these services, and the files are protected under SYSTEM ownership, preventing users from deleting everything without first changing the permissions for each file. 
# How it works
This script deactivates all running HP services, locates the software installation folder, changes permissions to the local user, and subsequently deletes all installed files.
# How I run it
Simply download .bat file, right-click and run as admin, and then simply follow the program instructions. 
# What I need to know
This is a experimental script and is provided as is. I do not assume any responsibility for its use. This script make use of potentially dangerous instructions. I do not guarantee the functionality or safety of the script. By executing this program, you acknowledge that you are solely responsible for any consequences that may arise from its use. Proceed with caution and at your own risk. Auto-detection of installation path: Please ensure the accuracy of the installation path detected. Proceeding with the script will result in changing the permissions of all files and subfolders within the specified path, followed by their permanent deletion. If the provided path is incorrect, it is highly recommended to press CTRL+C to terminate the program. By continuing with the execution of this script, you acknowledge that you have verified the installation path and agree to the potential consequences of altering permissions and permanently deleting files.
# Legal
CC-BY-4.0 international license. 
