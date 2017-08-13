% Classical Greek in my transcription to Latin transcription according to the ALA-LC Romanization Tables.
% My notation is identical to Yannis Haralambous' notation. 
% (modified to work better with the Latin-1 character set.)

% Assuming the following diphthongs: ai au ei eu oi ou hu ui, with the accents always on the second letter.

@patterns 0

"<ELT>"     1 "<foreign lang=el-latn>"
"<ELT>mp"   1 "<foreign lang=el-latn>b"
"<ELT>Mp"   1 "<foreign lang=el-latn>B"
"<ELT>nt"   1 "<foreign lang=el-latn>&dbarb;"
"<ELT>Nt"   1 "<foreign lang=el-latn>&Dbarb;"

"<ELTA>"    1 ""
"<ELTA>mp"  1 "b"
"<ELTA>Mp"  1 "B"
"<ELTA>nt"  1 "&dbarb;"
"<ELTA>Nt"  1 "&Dbarb;"


"<GRT>"     1 "<foreign lang=grc-latn>"
"<GRT>mp"   1 "<foreign lang=grc-latn>b"
"<GRT>Mp"   1 "<foreign lang=grc-latn>B"
"<GRT>nt"   1 "<foreign lang=grc-latn>&dbarb;"
"<GRT>Nt"   1 "<foreign lang=grc-latn>&Dbarb;"

"<GRTA>"    1 ""
"<GRTA>mp"  1 "b"
"<GRTA>Mp"  1 "B"
"<GRTA>nt"  1 "&dbarb;"
"<GRTA>Nt"  1 "&Dbarb;"

@patterns 2 % Skip over SGML entities in Greek transcriptions

";"         1 ";"

@patterns 1

"</ELT>"     0 "</foreign>"
"</ELTA>"    0 ""

"</GRT>"     0 "</foreign>"
"</GRTA>"    0 ""

"&"         2 "&"

"a"         p "a"
"A"         p "A"
"a|"        p "a"
"A|"        p "A"
"<a|"       p "ha"
"<A|"       p "Ha"
">a|"       p "a"
">A|"       p "A"
"'a|"       p "a"
"'A|"       p "A"
"`a|"       p "a"
"`A|"       p "A"
"=a|"       p "a"
"=A|"       p "A"
"<'a|"      p "ha"
"<'A|"      p "Ha"
">'a|"      p "a"
">'A|"      p "A"
"<`a|"      p "ha"
"<`A|"      p "Ha"
">`a|"      p "a"
">`A|"      p "A"
"<=a|"      p "ha"
"<=A|"      p "Ha"
">=a|"      p "a"
">=A|"      p "A"
"<a"        p "ha"
"<A"        p "Ha"
">a"        p "a"
">A"        p "A"
"`a"        p "a"
"`A"        p "A"
"'a"        p "a"
"'A"        p "A"
"=a"        p "a"
"=A"        p "A"
"<'a"       p "ha"
"<'A"       p "Ha"
">'a"       p "a"
">'A"       p "A"
"<`a"       p "ha"
"<`A"       p "Ha"
">`a"       p "a"
">`A"       p "A"
"<=a"       p "ha"
"<=A"       p "Ha"
">=a"       p "a"
">=A"       p "A"

"b"         p "b"
"B"         p "B"

"g"         p "g"
"G"         p "G"
"gg"        p "ng"
"gk"        p "nk"
"gx"        p "nx"
"gq"        p "nch"
"Gg"        p "Ng"
"Gk"        p "Nk"
"Gx"        p "Nx"
"Gq"        p "Nch"

"d"         p "d"
"D"         p "D"

"e"         p "e"
"E"         p "E"
"<e"        p "he"
"<E"        p "He"
">e"        p "e"
">E"        p "E"
"`e"        p "e"
"`E"        p "E"
"'e"        p "e"
"'E"        p "E"
"=e"        p "e"
"=E"        p "E"
"<'e"       p "he"
"<'E"       p "He"
">'e"       p "e"
">'E"       p "E"
"<`e"       p "he"
"<`E"       p "He"
">`e"       p "e"
">`E"       p "E"
"<=e"       p "he"
"<=E"       p "He"
">=e"       p "e"
">=E"       p "E"

"z"         p "z"
"Z"         p "Z"

"h"         p "�"
"H"         p "�"
"h|"        p "�"
"H|"        p "�"
"<h|"       p "h�"
"<H|"       p "H�"
">h|"       p "�"
">H|"       p "�"
"'h|"       p "�"
"'H|"       p "�"
"`h|"       p "�"
"`H|"       p "�"
"=h|"       p "�"
"=H|"       p "�"
"<'h|"      p "h�"
"<'H|"      p "H�"
">'h|"      p "�"
">'H|"      p "�"
"<`h|"      p "h�"
"<`H|"      p "H�"
">`h|"      p "�"
">`H|"      p "�"
"<=h|"      p "h�"
"<=H|"      p "H�"
">=h|"      p "�"
">=H|"      p "�"
"<h"        p "h�"
"<H"        p "H�"
">h"        p "�"
">H"        p "�"
"`h"        p "�"
"`H"        p "�"
"'h"        p "�"
"'H"        p "�"
"=h"        p "�"
"=H"        p "�"
"<'h"       p "h�"
"<'H"       p "H�"
">'h"       p "�"
">'H"       p "�"
"<`h"       p "h�"
"<`H"       p "H�"
">`h"       p "�"
">`H"       p "�"
"<=h"       p "h�"
"<=H"       p "H�"
">=h"       p "�"
">=H"       p "�"

"j"         p "th"
"J"         p "Th"

"i"         p "i"
"I"         p "I"
"<i"        p "hi"
"<I"        p "Hi"
">i"        p "i"
">I"        p "I"
"`i"        p "i"
"`I"        p "I"
"'i"        p "i"
"'I"        p "I"
"=i"        p "i"
"=I"        p "I"
"<'i"       p "hi"
"<'I"       p "Hi"
">'i"       p "i"
">'I"       p "I"
"<`i"       p "hi"
"<`I"       p "Hi"
">`i"       p "i"
">`I"       p "I"
"<=i"       p "hi"
"<=I"       p "Hi"
">=i"       p "i"
">=I"       p "I"

"\"i"       p "&iuml;"
"\"I"       p "&Iuml;"
"`\"i"      p "&iuml;"
"'\"i"      p "&iuml;"
"=\"i"      p "&iuml;"

%% ai diphthong

"ai"         p "ai"
"Ai"         p "Ai"
"a<i"        p "hai"
"A<i"        p "Hai"
"a>i"        p "ai"
"A>i"        p "Ai"
"a`i"        p "ai"
"A`i"        p "Ai"
"a'i"        p "ai"
"A'i"        p "Ai"
"a=i"        p "ai"
"A=i"        p "Ai"
"a<'i"       p "hai"
"A<'i"       p "Hai"
"a>'i"       p "ai"
"A>'i"       p "Ai"
"a<`i"       p "hai"
"A<`i"       p "Hai"
"a>`i"       p "ai"
"A>`i"       p "Ai"
"a<=i"       p "hai"
"A<=i"       p "Hai"
"a>=i"       p "ai"
"A>=I"       p "Ai"

%% ei diphthong

"ei"         p "ei"
"Ei"         p "Ei"
"e<i"        p "hei"
"E<i"        p "Hei"
"e>i"        p "ei"
"E>i"        p "Ei"
"e`i"        p "ei"
"E`i"        p "Ei"
"e'i"        p "ei"
"E'i"        p "Ei"
"e=i"        p "ei"
"E=i"        p "Ei"
"e<'i"       p "hei"
"E<'i"       p "Hei"
"e>'i"       p "ei"
"E>'i"       p "Ei"
"e<`i"       p "hei"
"E<`i"       p "Hei"
"e>`i"       p "ei"
"E>`i"       p "Ei"
"e<=i"       p "hei"
"E<=i"       p "Hei"
"e>=i"       p "ei"
"E>=I"       p "Ei"

%% ui diphthong

"ui"         p "ui"
"Ui"         p "Ui"
"u<i"        p "hui"
"U<i"        p "Hui"
"u>i"        p "ui"
"U>i"        p "Ui"
"u`i"        p "ui"
"U`i"        p "Ui"
"u'i"        p "ui"
"U'i"        p "Ui"
"u=i"        p "ui"
"U=i"        p "Ui"
"u<'i"       p "hui"
"U<'i"       p "Hui"
"u>'i"       p "ui"
"U>'i"       p "Ui"
"u<`i"       p "hui"
"U<`i"       p "Hui"
"u>`i"       p "ui"
"U>`i"       p "Ui"
"u<=i"       p "hui"
"U<=i"       p "Hui"
"u>=i"       p "ui"
"U>=I"       p "Ui"

"k"         p "k"
"K"         p "K"

"l"         p "l"
"L"         p "L"

"m"         p "m"
"M"         p "M"

" mp"       p " b"
" Mp"       p " B"

"n"         p "n"
"N"         p "N"

" nt"       p " &dbarb;"
" Nt"       p " &Dbarb;"

"x"         p "x"
"X"         p "X"

"o"         p "o"
"O"         p "O"
"<o"        p "ho"
"<O"        p "Ho"
">o"        p "o"
">O"        p "O"
"`o"        p "o"
"`O"        p "O"
"'o"        p "o"
"'O"        p "O"
"=o"        p "o"
"=O"        p "O"
"<'o"       p "ho"
"<'O"       p "Ho"
">'o"       p "o"
">'O"       p "O"
"<`o"       p "ho"
"<`O"       p "Ho"
">`o"       p "o"
">`O"       p "O"
"<=o"       p "ho"
"<=O"       p "Ho"
">=o"       p "o"
">=O"       p "O"

%% oi diphthong

"oi"         p "oi"
"Oi"         p "Oi"
"o<i"        p "hoi"
"O<i"        p "Hoi"
"o>i"        p "oi"
"O>i"        p "Oi"
"o`i"        p "oi"
"O`i"        p "Oi"
"o'i"        p "oi"
"O'i"        p "Oi"
"o=i"        p "oi"
"O=i"        p "Oi"
"o<'i"       p "hoi"
"O<'i"       p "Hoi"
"o>'i"       p "oi"
"O>'i"       p "Oi"
"o<`i"       p "hoi"
"O<`i"       p "Hoi"
"o>`i"       p "oi"
"O>`i"       p "Oi"
"o<=i"       p "hoi"
"O<=i"       p "Hoi"
"o>=i"       p "oi"
"O>=I"       p "Oi"


"p"         p "p"
"P"         p "P"

"r"         p "r"
"R"         p "R"
"<r"        p "rh"
"<R"        p "Rh"
">r"        p "r"
">R"        p "R"

"s"         p "s"
"S"         p "S"
"c"         p "s"

"t"         p "t"
"T"         p "T"

"u"         p "y"
"U"         p "Y"
"<u"        p "hy"
"<U"        p "Hy"
">u"        p "y"
">U"        p "Y"
"`u"        p "y"
"`U"        p "Y"
"'u"        p "y"
"'U"        p "Y"
"=u"        p "y"
"=U"        p "Y"
"<'u"       p "hy"
"<'U"       p "Hy"
">'u"       p "y"
">'U"       p "Y"
"<`u"       p "hy"
"<`U"       p "Hy"
">`u"       p "y"
">`U"       p "Y"
"<=u"       p "hy"
"<=U"       p "Hy"
">=u"       p "y"
">=U"       p "Y"

"\"u"       p "y" % diaeresis not needed, as transcribed u in diphthongs
"\"U"       p "Y"
"`\"u"      p "y"
"'\"u"      p "y"
"=\"u"      p "y"

%% au diphthong

"au"         p "au"
"Au"         p "Au"
"a<u"        p "hau"
"A<u"        p "Hau"
"a>u"        p "au"
"A>u"        p "Au"
"a`u"        p "au"
"A`u"        p "Au"
"a'u"        p "au"
"A'u"        p "Au"
"a=u"        p "au"
"A=u"        p "Au"
"a<'u"       p "hau"
"A<'u"       p "Hau"
"a>'u"       p "au"
"A>'u"       p "Au"
"a<`u"       p "hau"
"A<`u"       p "Hau"
"a>`u"       p "au"
"A>`u"       p "Au"
"a<=u"       p "hau"
"A<=u"       p "Hau"
"a>=u"       p "au"
"A>=u"       p "Au"

%% eu diphthong

"eu"         p "eu"
"Eu"         p "Eu"
"e<u"        p "heu"
"E<u"        p "Heu"
"e>u"        p "eu"
"E>u"        p "Eu"
"e`u"        p "eu"
"E`u"        p "Eu"
"e'u"        p "eu"
"E'u"        p "Eu"
"e=u"        p "eu"
"E=u"        p "Eu"
"e<'u"       p "heu"
"E<'u"       p "Heu"
"e>'u"       p "eu"
"E>'u"       p "Eu"
"e<`u"       p "heu"
"E<`u"       p "Heu"
"e>`u"       p "eu"
"E>`u"       p "Eu"
"e<=u"       p "heu"
"E<=u"       p "Heu"
"e>=u"       p "eu"
"E>=u"       p "Eu"

%% ou diphthong

"ou"         p "ou"
"Ou"         p "Ou"
"o<u"        p "hou"
"O<u"        p "Hou"
"o>u"        p "ou"
"O>u"        p "Ou"
"o`u"        p "ou"
"O`u"        p "Ou"
"o'u"        p "ou"
"O'u"        p "Ou"
"o=u"        p "ou"
"O=u"        p "Ou"
"o<'u"       p "hou"
"O<'u"       p "Hou"
"o>'u"       p "ou"
"O>'u"       p "Ou"
"o<`u"       p "hou"
"O<`u"       p "Hou"
"o>`u"       p "ou"
"O>`u"       p "Ou"
"o<=u"       p "hou"
"O<=u"       p "Hou"
"o>=u"       p "ou"
"O>=u"       p "Ou"

%% hu diphthong

"hu"         p "�u"
"Hu"         p "�u"
"h<u"        p "h�u"
"H<u"        p "H�u"
"h>u"        p "�u"
"H>u"        p "�u"
"h`u"        p "�u"
"H`u"        p "�u"
"h'u"        p "�u"
"H'u"        p "�u"
"h=u"        p "�u"
"H=u"        p "�u"
"h<'u"       p "h�u"
"H<'u"       p "H�u"
"h>'u"       p "�u"
"H>'u"       p "�u"
"h<`u"       p "h�u"
"H<`u"       p "H�u"
"h>`u"       p "�u"
"H>`u"       p "�u"
"h<=u"       p "h�u"
"H<=u"       p "H�u"
"h>=u"       p "�u"
"H>=u"       p "�u"


"f"         p "ph"
"F"         p "Ph"

"q"         p "ch"
"Q"         p "Ch"

"y"         p "ps"
"Y"         p "Ps"

"w"         p "�"
"W"         p "�"
"w|"        p "�"
"W|"        p "�"
"<w|"       p "h�"
"<W|"       p "H�"
">w|"       p "�"
">W|"       p "�"
"'w|"       p "�"
"'W|"       p "�"
"`w|"       p "�"
"`W|"       p "�"
"=w|"       p "�"
"=W|"       p "�"
"<'w|"      p "h�"
"<'W|"      p "H�"
">'w|"      p "�"
">'W|"      p "�"
"<`w|"      p "h�"
"<`W|"      p "H�"
">`w|"      p "�"
">`W|"      p "�"
"<=w|"      p "h�"
"<=W|"      p "H�"
">=w|"      p "�"
">=W|"      p "�"
"<w"        p "h�"
"<W"        p "H�"
">w"        p "�"
">W"        p "�"
"`w"        p "�"
"`W"        p "�"
"'w"        p "�"
"'W"        p "�"
"=w"        p "�"
"=W"        p "�"
"<'w"       p "h�"
"<'W"       p "H�"
">'w"       p "�"
">'W"       p "�"
"<`w"       p "h�"
"<`W"       p "H�"
">`w"       p "�"
">`W"       p "�"
"<=w"       p "h�"
"<=W"       p "H�"
">=w"       p "�"
">=W"       p "�"

% punctuation marks

"&middot;"  p ";"
";"         p "?"

"&apos;"    p "&apos;"
"&prime;"   p "&prime;"

%% additional entities

"\\=a"       p "&amacr;"
"\\=A"       p "&Amacr;"
")a"         p "&abreve;"
")A"         p "&Abreve;"

"\\=i"       p "&imacr;"
"\\=I"       p "&Imacr;"
")i"         p "&ibreve;"
")I"         p "&Ibreve;"

"\\=u"       p "&umacr;"
"\\=U"       p "&Umacr;"
")u"         p "&ubreve;"
")U"         p "&Ubreve;"

"&digamma;"  p "w"
"&Digamma;"  p "w"
"&jgr;"      p "j"

%% warn for illegal characters

"v"         e "grt2sgml.pat: illegal character v"
"V"         e "grt2sgml.pat: illegal character V"
"C"         e "grt2sgml.pat: illegal character C"
"<"         e "grt2sgml.pat: stand alone <"
"'"         e "grt2sgml.pat: stand alone '"
">"         e "grt2sgml.pat: stand alone >"
"\""        e "grt2sgml.pat: stand alone \""
"`"         e "grt2sgml.pat: stand alone `"
"["         e "grt2sgml.pat: illegal character ["
"]"         e "grt2sgml.pat: illegal character ]"

@end
