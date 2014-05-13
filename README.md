openerp_lct_collection
======================

Meta repository containing all the modules for the LCT project.


Installation:
=============

In your OpenERP installation, clone this repo into the custom folder:

    git clone git@github.com:jrial/openerp_lct_collection.git custom

Add the custom folder to your addons path for OpenERP.

You're done!


Upgrading all modules to the latest version:
============================================

    git submodule foreach git pull


WARNING:
========

For developers of the submodules, please set up your git to always pull with rebase. See http://stevenharman.net/git-pull-with-automatic-rebase for the reasons and a HOWTO. It keeps the history a lot cleaner, and you can easily see who did what.

Also, make sure you set up your editor to strip trailing whitespace when saving files. It's ugly, unnecessary, and creates diffs that are way larger than they should be, distracting from the actual changes made in the revision.
