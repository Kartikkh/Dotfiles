# DotFiles 

It is a very cumbersome process setting up development environment on your Mac
and its very time consuming too.

So these are the Dotfiles which can easily installed all your Dev tools and dependencies such that it will provide you same experience as your Mac is never been formated !

These Dotfile or script automate the process of manual setups


## Installations
Bingo !!! Nothing is required from your side! you just need to start the Script !

Go Grab a coffee until it is done !


## Things it is doing !
 - Xcode Command Line Tools
 - Developer tools:  bash, tab completion, curl, git, GNU core utils, Python, Go, Java, Node etc
 - Common data stores: MySQL, PostgreSQL, MongoDB, Redis, and Elasticsearch
 - Javascript web development: Node.js,Angular.js and some important node Modules !
 - Android development: Java, Android SDK, Android Studio
 - Developer apps:  Sublime Text, Atom, Chrome, etc 
 - Python data analysis: IPython Notebook, NumPy, Pandas, Scikit-Learn, Matplotlib, etc
 
 
## How to start a script !

Check for the permission first, It should be executable and read 
for all the dotfiles. If the permission is not set to executable and read

Run this shell command 

```sh
chmod +rx *.sh
```

You don't need to install all the dev environments choose those environments that you need to setup 
and start the script 


* [Start.sh](https://github.com/Kartikkh/Dotfiles/blob/master/start.sh) - Contain the commands to start other scripts !
* [Osx](https://github.com/Kartikkh/Dotfiles/blob/master/osxprep.sh) - Install Xcode
* [Brew](https://github.com/Kartikkh/Dotfiles/blob/master/brew.sh) - Contains all basic tools develop need like Java, Python, Node, Go, Git, Autocomplete Bash etc.
* [Javascript](https://github.com/Kartikkh/Dotfiles/blob/master/javascript.sh) - Contains Node, Npm, Angular 4, Some common Npm Packages 
* [Python](https://github.com/Kartikkh/Dotfiles/blob/master/pydata.sh) - Contains Python , Python 3 and Some common Python Modules 
* [Databases](https://github.com/Kartikkh/Dotfiles/blob/master/datastores.sh) - Contains Common DataStores, Postgres, Sql , MongoDb, Redis
* [Git](https://github.com/Kartikkh/Dotfiles/blob/master/git.sh) - Contains Git setup 
* [Android](https://github.com/Kartikkh/Dotfiles/blob/master/android.sh) - Contains Java, Android Studio, Android SDK etc


In order to setup all the dev-tools listed, Run

```bash
./start.sh all
```

For any particular tool

```sh 
./FILENAME.sh
```

For many dev tools, Run 
```bash
./start.sh [NAME OF FILES TO RUN] 
```
#Contribution
Pull requests are welcome !



 







