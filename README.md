<div align="center">

# Rune Emacs

  ...Image TBD...
  
</div>

---

## Introduction
This is what will eventually become **Rune Emacs** (or maybe some other spelling). For now, it's 
basically just a few config files and a rudimentary installer. In any case, it has one thing 
going for it at the moment: a very easy "installation" process. 

This is essentially meant to be an absolute noob's version of Emacs. Specifically, someone who 
most likely:
* Has some familiarity with Linux, with little-to-no experience with the CLI
* Has used Vim in the past and is familiar with the keybindings
* Wants to make the switch to Emacs as painlessly as possible
* Wants a simple, easy Emacs setup without too many add-ons 

### Prerequisites
The main requirement is **[GNU Emacs](https://www.gnu.org/software/emacs/)** (please note that this
program has only been tested on Emacs 28.2+). **You will also need git** installed on your system.
Other than that, you really don't need anything else, though please note that this is a **Linux-only** 
program (though it might work fine on MacOS). Remember, this is meant to be Emacs for someone who 
really doesn't know how to get started. At least at this point. There really isn't much going on 
under the hood right now, since that would defeat the purpose somewhat. 

To install Emacs, you should use whatever package manager your distribution uses and install
it through the command line. For example:

#### Debian/Ubuntu
```sh
sudo apt install emacs
```

#### Fedora
```sh
sudo dnf install emacs
```

#### Arch Linux
```sh
sudo pacman -Syu emacs
```

The instructions for installing Git are identical, just switch out ```emacs``` with ```git```.

### Installation
(Full discolure: if you're reading this, I haven't actually *tested* this out yet. I'll get 
to it tomorrow. Probably.)

The easiest way to install this is to simply use the script included in this GitHub repo. You 
can download it yourself by clicking on the ```install.sh``` file above and clicking the button 
marked "Download raw file." in the upper-right corner. 

Now, you'll have to make it an executable. Do this with the ```chmod``` command:
```sh
chmod +x install.sh
```

Finally, you're ready to run the installation! Do this with the command:
```sh
./install.sh
```

Now, Rune Emacs should install itself on your system. Once it's done, open up Emacs and let
it sync with the init.el file. This should only take a few seconds. (Please note that this
requires an internet connection.) 

Once that's done, you're good to go!

(Please ignore the error messages on your first startup. I'm working on getting rid of those.)

### Notes
* This has only been tested on Arch Linux, Gentoo, and Debian 12 and 13 Stable
* This has only been tested on Emacs 28.2+ (Specifically, 28.2 and 30.1)
* This program does not require sudo; it only affects files in your $HOME directory
* It assumes that you are using ~/.emacs.d as your Emacs configuration directory
* Don't forget to delete the ```install.sh``` file you manually downloaded when you're done

