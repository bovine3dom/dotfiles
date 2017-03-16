function mypandoc
	pandoc $argv".md" --template=sensible_pandoc_wip.latex -o $argv".pdf" --filter pandoc-crossref
end
