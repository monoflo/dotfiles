#!/usr/bin/env -S sh -e

function git_branch_default
{
    git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'
}

function git_branch_select
{
    :
# "!f() { " \
    # "opts=$(cat <(git rlsh) <(git rlsr) | tr ' ' '\n' | nl | sort -u -k2 | sort -n | cut -f2-); " \
    # "select b in $opts; do if [ -n \"$b\" ]; then break; fi; done; " \
    # "[ \"$#\" -gt 0 ] && git \"$@\" \"$b\" || echo \"$b\"; " \
# "}; f $@; unset f"
}

function git_config_list
{
    git config --list | sort
}

function git_refs_list
{
    # add: opts to select ref types
    git for-each-ref --format='%(refname:short)' "refs/$1"
}

function git_worktree_make
{
    :
# "!f() { " \
    # "[ \"$#\" -ne 1 ] && echo 2>&1 'usage: git worktree-make <basedir>' && exit 1;" \
    # "b=\"$(git bsel)\"; " \
    # "repo=\"$(basename $(git show-toplevel))\"; " \
    # "git worktree add \"$1/$repo\" \"$b\"; " \
# "}; f $@; unset f"
}

function git_worktree_select
{
    :
# "!f() { " \
    # "select wt in $(git wtls | awk '{print $1}'); do if [ -n \"$wt\" ]; then break; fi; done; " \
    # "[ \"$#\" -gt 0 ] && git \"$@\" \"$wt\" || echo \"$wt\"; " \
# "}; f $@; unset f"
}

# git_branch_default
# git_config_list
git_refs_list
