# Documentation for the miniFPC Project
miniFPC Documentation

To view the Documentation as HTML Mark-Down, you can follow the Link:<br>
[click here](https://fpc.kallup.net). or as: [alternative](https://minifpc.github.io/doc/).

To create the Documentation on your own local Developer Domain, you can use the
shiped **build.bat** in this repro.

<pre>
D:\a\TinyRTL\TinyRTL\doc>build.bat
-[ remove old crap...           ]-
-[ create new: de folders...    ]-
-[ create new: en folders...    ]-
-[ copy new: de files...        ]-
-[ copy new: en files...        ]-
-[ create de: dark chm file...  ]-
-[ create de: light chm file... ]-
-[ create en: dark chm file...  ]-
-[ create en: light chm file... ]-
-[ create de: dark htm file...  ]-
-[ create de: light htm file... ]-
-[ create en: dark htm file...  ]-
-[ create en: light htm file... ]-
-[ copy new de: chm files...    ]-
-[ copy new en: chm files...    ]-
-[ successfully build files...  ]-

done.
</pre>
This can take a while. And you have the Environment variable **DOXYGEN_HH** together with
the latest **doxygen** distribution for your System (Windows) with working copy of
Microsoft HTML Help Compiler (which is part of HTML Workshop).

The result will be:
- 2 chm (Compiled Windows Help):
  * dark style for English Developers
  * light style
- 2 chm (Compiled Windows Help):
  * dark style for German Developers
  * light style

Have a nice Day<p>
Your miniFPC Team
</p>
