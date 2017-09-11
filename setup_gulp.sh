#!/bin/bash
#
# Author: Roland Myrvold
# Version: 0.0.1
# LICENSE: GPL+2

cd web/profiles/custom/kopernikus2/themes/kopernikus2theme

echo '
[[[ Install Node.js ]]]
'
./install-node.sh 4.4.4
source ~/.nvm/nvm.sh
nvm use --delete-prefix 4.4.4

echo '
[[[ Install avn ]]]
'
npm install -g avn avn-nvm
avn setup
source ~/.bash_profile

echo '
[[[ Install the Yarn package manager ]]]
'
npm install -g yarn
yarn install
npm run install-tools
npm install -g gulp-cli
npm run build

cd - 1>/dev/null

echo '

[[[ All done! ]]]

Make sure that .bash_profile is being used when you open a new terminal, likely by having

  if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
  fi

in your .bashrc

You can now go to web/profiles/custom/kopernikus2/themes/kopernikus2theme
and do gulp build or gulp watch to build the theme whenever needed.'
