Tips
=====

Case Coercion [abolish.vim]
---------------------------------
``
crc  to camelCase   (fooBar)
crm  to MixedCase   (FooBar)
cr_  or
crs  to snake_case  (foo_bar)
cru  to UPPER_CASE  (FOO_BAR)
cr-  to dash-case   (foo-bar)
``

Swap Header/Source
-------------------
:e <%.h

<% is filename without extension



Unwrap long line to 80 characters
---------------------------------
gq 


Toggle Comment (tComment)
-------------------------
gc


Double Quote Replace (surround)
------------------------------
cs"'

Change surrounding double quote to single quote


Delete inside quotes (including quotes)
---------------------------------------
Instead of di"  to delete inside quotes
use        da"  to delete a quote block

Emphasize hello (surround)
--------------------------
``
ysiw<em>
<em>Hello</em> world! 

Yank surrounding insert word "the stuff"

or Visually do 
S<em>
``

Get Current File
----------------
c-g


vimdiff
=======
do   diff obtain (from other file)
dp   diff put    (  on other file)
]c   next change
[c   prev change

Marks
-------
ma      mark a at current loc
'a      goto a
d'a     delete from here to mark a
c'a     change from here to mark a
y'a     yank   from here to mark a
:marks  show all marks
'.      jump to last change
'"      jump to last exited
``      jump back to last jump pos
''      jump back to last jump line
:delmarks ab   delete mark a and b


Show whitespace
----------------
set list
set nolist

colorscheme
--------------
To see whats available
    :colorscheme 
and then press <C-d>

Some colorschemes have additional parameters.
For example
    :colorscheme solarized
    :set background=dark
    :colorscheme solarized
    :set background=light

Online Preview: 
    http://vimcolorschemetest.googlecode.com/svn/html/index-html.html

