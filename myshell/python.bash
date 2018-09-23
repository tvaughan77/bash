alias ve="virtualenv env && source env/bin/activate"
alias json="python -mjson.tool"
alias fixpy="pbpaste | sed 's/^>>> //' | sed 's/^... //' | pbcopy"

# Initializes pyenv-virtualenv if pyenv is installed
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
#eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
pyenv virtualenvwrapper
