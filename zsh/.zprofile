alias d=deno
alias t="deno task"
alias n=npm
alias r="npm run"
alias g=git
alias m=mise

gwt() {
  local dir
  dir=$(git worktree list --porcelain |
    awk '/^worktree / {print $2}' |
    fzf --height=40% --reverse) || return
  cd "$dir"
}