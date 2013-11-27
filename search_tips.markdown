:substitute
================

Replace All
-----------
  :%s/foo/bar/g

Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

Replace Current Line
--------------------
  :s/foo/bar/g

Find each occurrence of 'foo' (in the current line only),
and replace it with 'bar'.

Replace Confirm 
---------------
  :%s/foo/bar/gc

Change each 'foo' to 'bar',
but ask for confirmation first.

Replace Word Exactly
--------------------
  :%s/\<foo\>/bar/gc

Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.

Replace Case Insensitive
------------------------
  :%s/foo/bar/gci

Change each 'foo' (case insensitive) to 'bar'; ask for confirmation.
This may be wanted after using
:set noignorecase to make searches case sensitive (the default).

Replace (Case nonsensitive)
---------------------------
  :%s/foo/bar/gcI
Change each 'foo' (case sensitive) to 'bar'; ask for confirmation.
This may be wanted after using :set ignorecase to make searches case insensitive.
The g flag means global – each occurrence in the line is changed, rather than just the first. This tip assumes the default setting for the 'gdefault' and 'edcompatible' option (off), which requires that the g flag be included in %s///g to perform a global substitute. Using :set gdefault creates confusion because then %s/// is global, whereas %s///g is not (that is, g reverses its meaning).


Source 
======
[Source](http://vim.wikia.com/wiki/Search_and_replace)
