function ifzf_search -d "Interactive fuzzy search"
    # Args: header, values

    set header $argv[1]
    set -e argv[1]
    set values $argv
    printf %s\n $values | fzf --border --header="$header" --height=15 --reverse
end
