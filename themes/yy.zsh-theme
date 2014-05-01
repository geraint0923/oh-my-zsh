function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

#PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[cyan]%}%(!.%1~.%~) %_%{$fg_bold[green]%}$(prompt_char)%{$reset_color%} '
PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%}%n@)%m %{$fg[cyan]%}%(!.%1~.%~) %_%{$fg[green]%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

return_code_enabled="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
return_code_disabled=
return_code=$return_code_enabled
RPS1='${return_code}  %{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'
