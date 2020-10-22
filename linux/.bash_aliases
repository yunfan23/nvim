alias lr='ls -lrth'
alias ll='ls -l'
alias pd='python -m pdb'
alias b='cd ..'
alias h='history'
py() { time python -u "$1" | tee "$1.log"; }
