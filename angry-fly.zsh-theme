# ------------------------------------------------------------------------
# Angry-Fly oh-my-zsh theme
# Russ Johnson - russ@angry-fly.com
# http://angry-fly.com
#
# Based on a theme by Juan G. Hurtado
#
# REQUIREMENTS
# (Needs Git plugin for current_branch method)
# ------------------------------------------------------------------------

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
MAGENTA=$fg[magenta]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
MAGENTA_BOLD=$fg_bold[magenta]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$MAGENTA_BOLD%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$RESET_COLOR%}"

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$RED%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$YELLOW%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$YELLOW%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}untracked"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%} ⇧"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}[%{$YELLOW%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}]"

SMILEY="%(?,%{$GREEN%}☺%{$RESET_COLOR%},%{$RED%}☠%{$RESET_COLOR%})"

# Prompt format
PROMPT='
%{$MAGENTA_BOLD%}%n%{$RESET_COLOR%} @ %{$YELLOW_BOLD%}%m%{$RESET_COLOR%} in %{$GREEN%}%~%u : $(parse_git_dirty)$(git_prompt_ahead)%{$RESET_COLOR%}
${SMILEY} %{$BLUE%}>%{$RESET_COLOR%} '
RPROMPT='%{$MAGENTA_BOLD%}$(current_branch)$(git_prompt_short_sha)$(git_prompt_status)%{$RESET_COLOR%}'