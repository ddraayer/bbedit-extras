# bbedit-extras

> Add-ons and customizations for the [BBEdit](https://www.barebones.com/products/bbedit/) text editor


## Codeless Language Modules

Codeless language modules (CLMs) are a relatively simple way to extend BBEdit's syntax coloring and function navigation to support additional languages. A CLM is a `.plist` ("property list") file with a particular structure. See the BBEdit [Codeless language modules](https://www.barebones.com/support/develop/clm.html) documentation for details---it is quite easy to follow.


### CLMs available here

* `MetaPost.plist` - syntax coloring for [MetaPost](http://tug.org/metapost) `.mp` source files


### Installing CLMs

To install a CLM `.plist` file, just copy or move it to the BBEdit **Language Modules** special folder (BBEdit needs to be restarted to pick up the new CLM). You can locate that folder from within BBEdit itself by selecting the **BBEdit > Folders > Language Modules** menu item (typically this folder is `~/Library/Application Support/BBEdit/Language Modules`).

**Note:** If you are tracking a CLM in a repository (such as this one), BBEdit will not see any changes made to the repository version unless and until it gets copied into the **Language Modules** folder (and then restarting BBEdit of course). If you would like the CLM in **Language Modules** to always reflect the current repository version, you can put a link back to the original file rather than copy it. E.g.:

```
% ln -s <your-clm>.plist ~/Library/Application Support/BBEdit/Language Modules/
```

Use a *symbolic* link  (`-s`) here (rather than a hard link) because when text editors save to an existing file, they do not necessarily write the file contents back to the same file system "inode"; a hard link in **Language Modules** would continue pointing to the old inode, and so BBEdit would continue holding onto the version as of the time the hard link was created (defeating the purpose of linking in the first place).
