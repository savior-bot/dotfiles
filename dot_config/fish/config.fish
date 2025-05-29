set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Init Oh My Posh with a theme
oh-my-posh init fish --config ~/.ohmyposhThemes/theme.omp.json | source
