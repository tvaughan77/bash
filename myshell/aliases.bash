alias uuid="curl -q https://www.uuidgenerator.net/api/version4 2>/dev/null | tr -d '[:space:]' | pbcopy && pbpaste && echo"
alias xml="xmllint --format -"
alias tsv="pbpaste | sed 's/|//g' | sed 's/^ *//' | sed 's/ *$//' | sed 's/   */   /g'  | grep -v "^[+-][+-]*$" | pbcopy"
