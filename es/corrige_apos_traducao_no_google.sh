FILE="$1"
FILE="02-Pilares-Da-Fe/ES-Pilares-Da-Fé.md"
cp -f "02-Pilares-Da-Fe/ES-Pilares-Da-Fé copy.md" $FILE

# Titulo

sed -ri 's/\*\* (.*) \*\* \{class = titulo_capa\}$/**\1**{class=titulo_capa}/' $FILE

# Pagina
sed -ri "s@<div class = 'página'> & nbsp; </div>@<div class='page'>&nbsp;</div>@" $FILE

# Imagens
sed -ri 's@\! \[\] \(../ logo-mqa.jpg\)@![](../logo-mqa.jpg)@' $FILE
sed -ri 's@\! \[\] \((.*)\)@![](\1)@' $FILE

# admonition
sed -ri 's/\!\!\!( ejemplo )/!!!example /i' $FILE
sed -ri 's/\!\!\!( Nota |Nota )/!!!note /i' $FILE
sed -ri 's/\!\!\!( citar | cita )/!!!example /i' $FILE

# titulos
sed -ri 's/\*\* (.*) \*\*(|  )$/**\1**\2/' $FILE

ASK="pregunta|pregunta |question|question "
AST="\*\*| \*\*|\*\* | \*\* |\* \*| \* \*| \* \* "
CLASS="clase| clase|class| class"
LIVRO="libroQ|bookQ"

# perguntas
sed -ri "s/($AST)(.*)($AST)\{(| )($CLASS)(=| =| = )($ASK)(| )\}/**\2**{class=questao}/" $FILE
sed -ri "s/ ($AST)(.*)($AST)\{($CLASS)(=| =| = )($LIVRO)\}/ **\2**{class=livroQ}/" $FILE
sed -ri 's/\*\* (.*) \*\*\{class=questao\} \*\* (.*) \*\*\{class=livroQ\}/**\1**{class=questao} **\2**{class=livroQ}/' $FILE


VERSO="versoQ|verseQ"
LIVRO="bookVerse"
sed -ri "s/($AST)(.*)($AST)\{(| )($CLASS)(=| =| = )($VERSO)(| )\}/**\2**{class=versoQ}/" $FILE
sed -ri "s/\{class=versoQ\}($AST)(.*)($AST)\{($CLASS)(=| =| = )($LIVRO)(| )\}/{class=versoQ} **\2**{class=livroVerso}/" $FILE

sed -ri 's/\*\* (.*) \*\*\{class=versoQ\} \*\* (.*) \*\*\{class=livroVerso\}/**\1**{class=versoQ} **\2**{class=livroVerso}/' $FILE


VERSO="verse|verso"
LIVRO="book|libro|libroVerso"
sed -ri "s/($AST)(.*)($AST)\{(| )($CLASS)(=| =| = )($VERSO)(| )\}/**\2**{class=verso}/" $FILE
sed -ri "s/\{class=verso\}($AST)(.*)($AST)\{($CLASS)(=| =| = )($LIVRO)(| )\}/{class=verso} **\2**{class=livro}/" $FILE

sed -ri 's/\*\* (.*) \*\*\{class=verso\} \*\* (.*) \*\*\{class=livro\}/ **\1**{class=verso} **\2**{class=livro}/' $FILE



#**(Levítico 16:23; 23: 27-32). ** {class = book}
LIVRO="libro|book"
sed -ri "s/($AST)(.*)($AST)\{($CLASS)(=| =| = )($LIVRO)\}/**\2**{class=livro}/" $FILE
sed -ri "s/\*\* (.*) \*\*\{class=livro}/ **\1**{class=livro}/" $FILE

# Code
sed -ri "s/''/\`\`\`/" $FILE

# Finais
CLASSV="verso del libro|libro"
# Classes
sed -ri "s/(| )\{(| )(clase|class)(=| =|= | = )($CLASSV)(| )\}/{class=livro}/" $FILE
