#!/bin/bash

echo This script will create a directory with starter html, css, and js files.

read -p 'What would you like to name your directory?' DIR_NAME

read -p 'What is the title of your application?' TITLE

CURRENT_DIR=$(pwd)

cd ~
mkdir $DIR_NAME
cd $DIR_NAME

cat > index.html <<- _EOF_ 
<!DOCTYPE html>
<html>
    <head>
        <title>$TITLE</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>$TITLE</h1>
        <p>Welcome to $TITLE</p>
    <script src="app.js"></script>	
    </body>
</html>
_EOF_

touch styles.css
touch app.js

echo A new directory $(pwd) was created with the following files:
ls

cd $CURRENT_DIR


