#!/bin/bash

echo "Generating install.sh script!"

echo "#!/bin/bash" > install.sh
echo "echo \"Installing latest emacs configuration\"" >> install.sh
echo "echo \"Deleting current .emacs.d folder!\"" >> install.sh
echo "rm -rf ~/.emacs.d/" >> install.sh

cp ~/.emacs.d/init.el latest_build

echo "mkdir -p ~/.emacs.d" >> install.sh
echo "echo \"Copying latest_build to init.el\"" >> install.sh
echo "cp latest_build ~/.emacs.d/init.el" >> install.sh

echo "Generated install.sh"

chmod +x install.sh

echo "Pushing to git"

git add .
git commit -m "Updated install emacs installation"
git push origin master
