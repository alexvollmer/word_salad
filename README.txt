*** NOTE ***
This repository only covers word_salad version 1.0.0. Newer version available via RubyGems are maintained in other forks.

= Word Salad

== DESCRIPTION:

Word Salad is a very simple Ruby library for generating random strings
of English words based on the Unix dictionary file. The gem does its
best to figure out where your particular dictionary file is, but on
some systems may need a little help.

== SYNOPSIS:

Generating random data is helpful for all kinds of testing. You could
just generate random gobble-dee-gook, but why not generate something
that looks a bit English-like? If for no other reason, you'll find great
enjoyment in all of the potential band-names that this gem generates.

WordSalad adds three methods to the <tt>Fixnum</tt> class to do things
like this:

    require 'rubygems'
    require 'word_salad'

    3.words ==> ['draw', 'ameliorate', 'bonanza']
    2.sentences ==> ['Shoot jonesing the make castle.', 'Blue murdered slight bastion.']
    2.paragraphs ==> ["Brachypterous gastropod pheretrer overeager toploftily denaturalization stokesite demented benzalhydrazine archaeologic. Haverer hypophonous lenticularly brickliner urocele paucipinnate pik unprintably perhalogen. Subglenoid bearish gesticulative staircase gallop vesuvianite pneumatically overyear conterminous dreamish. Nonalliterated galliwasp superconfirmation Comandra entoil millionth parcellize rarefaction Cynoidea. Podolian metamorphosable nativeness integriously protonematoid undoctor stochastically dissatisfactory unchastity.", "Increate unloquacious unsatisfiedly flareboard internuncio beguine equivocation snowshoe Rhynchonellacea. Parochially curliewurly vermix consistorial cond consciencelessness Anaxagorize recoct sempiternally Campanulatae. Scorpionida Castalides homoanisic semipenniform Novemberish assessor preterlethal acrotarsial knoller hartin. Procrastination boatwise canonize differentiate faunlike countermarriage obstinance dilatableness drumloid. Gerate squirr Silvanus Physostigma booting thyroarytenoid diminutival legpuller medisance radiobserver."]

== CUSTOMIZATION

WordSalad relies on the presence of a valid Unix dictionary file. It
will do it's best to figure out where one is, but doesn't account for
every platform. If you are one of those special people that has a
dictionary file in a place WordSalad can't find, you can tell it by
calling <tt>dictionary_path</tt> attribute setter method.

     require 'rubygems'
     require 'word_salad'

     WordSalad.dictionary_path = "/my/special/dictionary/path"

== INSTALL:

To install Word Salad, simply:

    sudo gem install word_salad

== LICENSE:

(The MIT License)

Copyright (c) 2008 Alex Vollmer

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
