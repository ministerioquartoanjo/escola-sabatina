FILE="$1"
FILE="02-The-Pillars-of-Faith/The-Pillars-of-Faith.md"
cp -f "02-The-Pillars-of-Faith/The-Pillars-of-Faith copy.md" $FILE

# Generico
sed -ri "s/[ ]+\{[ ]{0,}class[ ]{0,}=[ ]{0,}([a-z_]+)[ ]{0,}\}/{class=\1}/gi" $FILE
sed -ri "s/[ ]+\*[ ]{0,2}\*\{class=([a-z_]+)\}/**{class=\1}/gi" $FILE

sed -ri "s/\{class=question\} \*\*[ ]+/{class=questao} **/gi" $FILE
sed -ri "s/\{class=versoQ\} \*\*[ ]+/{class=versoQ} **/gi" $FILE
sed -ri "s/\{class=verse\} \*\*[ ]+/{class=verso} **/gi" $FILE

sed -ri "s/bookVerse/livroVerso/ig" $FILE
sed -ri "s/bookQ/livroQ/ig" $FILE
sed -ri "s/book\}/livro}/ig" $FILE


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

exit 0;
