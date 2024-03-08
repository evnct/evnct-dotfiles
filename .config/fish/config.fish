if status is-interactive
    set -g fish_greeting # disables the greeting
    starship init fish | source
    # incomplete and prob will always be
    set -U fish_color_cwd "#E69875"
    set -U fish_color_user "#D3C6AA"
    set -U fish_color_cwd_root red
    set -U fish_color_autosuggestion "#7FBBB3"
    set -U fish_color_error "#E67E80"
    set -U fish_color_command "#83C092"
    set -U fish_color_comment "#859289"
    set -U fish_color_cancel "#E67E80"
    set -U fish_color_operator "#E69875"
    set -U fish_color_host "#D3C6AA"
    set -U fish_color_history_current --bold
    set -U fish_color_search_match '#543A48' '--background=#3D484D'
    set -U fish_color_selection '#543A48' --bold '--background=#3D484D'
    set -U fish_color_quote "#DBBC7F"
    set -U fish_color_param "#D3C6AA"
    set -U fish_color_redirection "#DBBC7F"
    set -U fish_color_valid_path --underline
    set -U fish_pager_color_completion "#7A8478"
    set -U fish_pager_color_description "#D3C6AA"
    set -U fish_pager_color_prefix '#A7C080' --bold --underline
    set -U fish_pager_color_progress '#D699B6' '--background=#3D484D'
end
