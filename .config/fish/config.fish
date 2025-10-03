if status is-interactive
    # Zoxide
    zoxide init fish | source

    # Starship
    starship init fish | source
end

# Aliases
alias ls lsd
alias ll "lsd -Al"
alias cat bat
alias vim nvim
alias grep rg
alias please sudo
