import sys
import re
from PyPDF2 import PdfReader, PdfWriter
from pdfminer.high_level import extract_pages
from pdfminer.layout import LTTextBoxHorizontal

def add_bookmarks(input_file, output_file, ignore_page=2):
    reader = PdfReader(input_file)
    writer = PdfWriter()

    bookmarks = {}  # Usaremos um dicionário para evitar duplicatas

    for page_num, page_layout in enumerate(extract_pages(input_file)):
        if page_num + 1 == ignore_page:  # Pula a página especificada
            continue
        for element in page_layout:
            if isinstance(element, LTTextBoxHorizontal):
                for text_line in element:
                    text = text_line.get_text().strip()
                    match = re.match(r'^\((\d+)\)(.*)', text)
                    if match:
                        number = int(match.group(1))
                        title = match.group(2).strip()
                        # Use o número como chave para evitar duplicatas
                        if number not in bookmarks:
                            bookmarks[number] = (f"({number}) {title}", page_num)

    for page in reader.pages:
        writer.add_page(page)

    # Ordena os bookmarks pelo número e adiciona ao PDF
    for number in sorted(bookmarks.keys()):
        text, page_num = bookmarks[number]
        writer.add_outline_item(text, page_num)

    with open(output_file, 'wb') as output:
        writer.write(output)

if __name__ == "__main__":
    if len(sys.argv) < 2 or len(sys.argv) > 3:
        print("Uso: python script.py <arquivo_de_entrada.pdf> [pagina_a_ignorar]")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = input_file.rsplit('.', 1)[0] + '-bm.pdf'
    
    ignore_page = 2  # Página padrão a ser ignorada
    if len(sys.argv) == 3:
        ignore_page = int(sys.argv[2])

    add_bookmarks(input_file, output_file, ignore_page)
    print(f"Arquivo processado e salvo como {output_file}")
    print(f"A página {ignore_page} foi ignorada no processamento.")