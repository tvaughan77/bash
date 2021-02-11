alias uuid="uuidgen"
alias xml="xmllint --format -"
alias tsv="pbpaste | sed 's/|//g' | sed 's/^ *//' | sed 's/ *$//' | sed 's/   */   /g'  | grep -v "^[+-][+-]*$" | pbcopy"
