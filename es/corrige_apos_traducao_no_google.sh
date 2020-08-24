FILE="$1"
FILE="02-Los-pilares-de-la-fe/Los-pilares-de-la-fe.md"
cp -f "02-Los-pilares-de-la-fe/Los-pilares-de-la-fe copy.md" $FILE

# Generico
CLASS="clase|class"
sed -ri "s/\*[ ]{0,2}\*[ ]{0,2}\{[ ]{0,2}($CLASS)[ ]{0,2}=[ ]{0,2}([a-z_ ]+)[ ]{0,2}\}/**{class=\2}/gi" $FILE

sed -ri "s/\{class=(pregunta|question)[ ]{0,1}\}[ ]{0,1}\*\*[ ]+/{class=questao}** /gi" $FILE
sed -ri "s/\{class=(versoQ|verseQ)[ ]{0,1}\}[ ]{0,1}\*\*[ ]+/{class=versoQ}** /gi" $FILE
sed -ri "s/\{class=(verse)\}[ ]{0,1}\*\*[ ]+/{class=verso}** /gi" $FILE

sed -ri "s/(bookVerse|libroVerso)[ ]{0,1}/livroVerso/ig" $FILE
sed -ri "s/(bookQ|libroQ)[ ]{0,1}/livroQ/ig" $FILE
sed -ri "s/(book|libro)[ ]{0,1}\}/livro}/ig" $FILE
sed -ri "s/(verse|verso del livro)[ ]{0,1}\}/verso}/ig" $FILE
sed -ri "s/(question)[ ]{0,1}\}/questao}/ig" $FILE

sed -ri "s/ \*\*\{class=(questao|livro|livroQ|verso|versoQ|livroVerso)\}/**{class=\1}/g" $FILE
sed -ri 's/\}\*\*/} **/g' $FILE

sed -ri "s/ \*\*\{class=titulo_capa\}/**{class=titulo_capa}/" $FILE

sed -ri 's/!!! /!!!/' $FILE # !!! note ""
sed -ri 's/ \*\*[ ]{0,2}$/**  /' $FILE # **Tick the correct answer: **  
sed -ri "s/^\*\* /**/" $FILE # ** Tick the correct answer: ** 

# Imagens
sed -ri 's@\! \[\] \(../ logo-mqa.jpg\)@![](../logo-mqa.jpg)@' $FILE
sed -ri 's@\! \[\] \((.*)\)@![](\1)@' $FILE

# Parenteses
sed -ri "s/\(\)/( )/" $FILE

sed -ri 's/\*\* ([a-z,; ]+\*\*\{class=)/**\1/gi' $FILE # ** The Sabbath was made because of man**{class=verso}

sed -ri 's/\*\* "/**"/' $FILE # ** "Thus says
sed -ri 's/ "\*\*/"**/' $FILE # God. "**
sed -ri 's/\*\* ([a-z])/**\1/gi' $FILE

ACCENTS="áéíóúâêîôûãẽĩõũç"
sed -ri "s/(\*\*[a-z$ACCENTS ]+:) \*\*/\1**/gi" $FILE
sed -ri "s/\* \"([a-z$ACCENTS \(\)]+)\"(|,) \*/*\"\1\"\2*/gi" $FILE # * "Holy" *

sed -ri 's/\*\*[ ]+.../**.../' $FILE # ** ...

# Code
sed -ri "s/\`\`/\`\`\`/" $FILE #    ``	
sed -ri "s/''/\`\`\`/" $FILE #    ``	

sed -ri 's/([0-9]+:) ([0-9])/\1\2/g' $FILE # **I Timothy 2: 5**

sed -ri "s/\*\*[ ]\(([a-z0-9$ACCENTS: -]+)\)[ ]{0,}([,\.]{0,1})[ ]{0,}\**/**(\1)\2**/gi" $FILE # ** (Revelation 13:11-17),**

# admonition
sed -ri 's/!!![ ]{0,2}(ejemplo)[ ]{0,2}/!!!example /i' $FILE
sed -ri 's/!!![ ]{0,2}(Nota)[ ]{0,2}/!!!note /i' $FILE
sed -ri 's/!!![ ]{0,2}(cita|citar)[ ]{0,2}/!!!cite /i' $FILE


# ( ) Sí No
sed -ri 's/[ ]{1,}Sí[ ]{1,}No/ Sí  ( ) No/i' $FILE