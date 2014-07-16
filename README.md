# LCT Collection

**Kept here for historical reasons/reference/nostalgia/... - project has moved to https://github.com/odoo/lct**

openerp_lct_collection
======================

Meta repository containing all the modules for the LCT project.


Installation:
=============

In your OpenERP installation, clone this repo into the custom folder:

    git clone git@github.com:jrial/openerp_lct_collection.git custom

Initialise/pull the submodules and get out of detached HEAD state:

    git submodule init
    git submodule update
    git submodule foreach git checkout master

Then update to the latest version: due to the way git works, submodules always track a specific commit, not a branch. If I set this up to track a branch instead, it'll always be in detached head mode, making development more difficult. Therefore, I leave it pointing to whatever commit it happened to be at when I last pushed, and just do a git pull on each submodule to bring it up to HEAD.

    git submodule foreach git pull

or you can just use the update script at the root of this repo:

    ./update_modules.sh

Add the custom folder to your addons path for OpenERP.

You're done!


Upgrading all modules to the latest version:
============================================

    git submodule foreach git pull

or you can just use the update script at the root of this repo:

    ./update_modules.sh


Committing your work:
=====================

Committing local changes to a submodule (which represents an OpenERP module) involves making the changes, then cd into the submodule folder and commit/push like you normally would. Say you changed \__init__.py in LCT_Assets:

    cd LCT_Assets
    git add __init__.py
    git commit -m "Enter a clever commit message here"
    git push
    cd ..

WARNING:
========

For developers of the submodules, please set up your git to always pull with rebase. See http://stevenharman.net/git-pull-with-automatic-rebase for the reasons and a HOWTO. It keeps the history a lot cleaner, and you can easily see who did what.

Also, make sure you set up your editor to strip trailing whitespace when saving files. It's ugly, unnecessary, and creates diffs that are way larger than they should be, distracting from the actual changes made in the revision.
