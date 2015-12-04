# zip-git
Recursively zips the folder ignoring some unwanted files for a production environment

The default action makes a zip file of the folder specified,
excluding the following folders:
`.git, bower_components, node_modules, .sass-cache, .idea`
and ignoring the following files:
`.DS_Store.`

##Installation
Run this command in a terminal:

`curl -sS https://raw.githubusercontent.com/artifex404/zip-git/master/installer.sh | bash`

If the command `zip-git` does not do anything after the installation, enter:

`source ~/.bash_profile`

##Usage
zip-git [-options] folder

##Options

**-i**    *Read .gitignore file in the folder specified and ignore all matched elements*
