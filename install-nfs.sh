### install nfs-kernel server
sudo apt-get update

sudo apt-get update
sudo apt-get install nfs-kernel-server

sudo mkdir -p /mnt/nfs_share

sudo chown -R nobody:nogroup /mnt/nfs_share/

sudo chmod 777 /mnt/nfs_share/

sudo echo -e "/mnt/nfs_share *(rw,sync,no_root_squash,no_subtree_check)" | sudo tee /etc/exports
sudo exportfs -a
sudo systemctl restart nfs-kernel-server