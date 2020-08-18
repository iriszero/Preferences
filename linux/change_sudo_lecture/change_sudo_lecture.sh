# Show the Peter Parker Principle

BASE_DIR=$(dirname "$0")

sudo mv $BASE_DIR/sudoers.lecture /etc/
sudo chown root:root /etc/sudoers.lecture
sudo mv $BASE_DIR/privacy /etc/sudoers.d/
sudo chown root:root /etc/sudoers.d/privacy

