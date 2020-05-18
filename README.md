Bitnami is known for its many pre-built quality Web Applications that are relatively simple to install.

The CIAB **lxd-bitnami-apps.sh** script in this repository further automates this to install a Bitnami application you choose
into an LXD container which you will be prompted to provide the Container name for.

Download or create "lxd-bitnami-apps.sh" and make it executable (example:  $ chmod +x lxd-bitnami-apps.sh)

You can find the entire Bitnami Application Catalog here:   **https://bitnami.com/stacks/installer**

Click on the "**Win/Mac/Linux Box**"

Click on the Application you are interested in.

Next Click on the "**Download for Linux 64 Bit Box**" which will have your web browser download that Application's
Bitnami .run Installation file to your "**~/Downloads**" directory.

When the download is complete, *use your file browser to find that .run file* and copy its entire file name.

**_Execute_**: "_lxd-bitnami-apps.sh_" and pass it 2 parameters:

**_Example_**: assume the script is in your Home directory

> $ ./lxd-bitnami-apps.sh container_name app_file_name.run

Accept all the default answers...

When the installation is complete (3-5 minutes) use your Host's Web Browser and point it to that LXD Containers 10.x.x.x 
IP address and *you should be presented with your newly installed Bitnami Application's Web Page*.
