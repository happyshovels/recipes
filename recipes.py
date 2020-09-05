from md2pdf.core import md2pdf

input_file = '/home/lukas/googledrive/recipes/source/köttbular.md'
output_file = '/home/lukas/googledrive/recipes/köttbular.pdf'

md2pdf(output_file,
       md_content=None,
       md_file_path=input_file,
       css_file_path=None,
       base_url=None)