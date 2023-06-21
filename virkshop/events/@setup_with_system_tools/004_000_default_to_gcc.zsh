__temp_var__path_to_gcc="$(virkshop_tools nix_path_for package gcc)"
__temp_var__path_to_gpp_binary="$__temp_var__path_to_gcc/lib/g++"
__temp_var__path_to_gcc_binary="$__temp_var__path_to_gcc/lib/gcc"
__temp_var__path_to_ld_binary="$__temp_var__path_to_gcc/lib/ld"

# if all of them are executable
if [ -f "$__temp_var__path_to_gcc_binary" ] && [ -r "$__temp_var__path_to_gcc_binary" ] && [ -x "$__temp_var__path_to_gcc_binary" ] &&     [ -f "$__temp_var__path_to_gpp_binary" ] && [ -r "$__temp_var__path_to_gpp_binary" ] && [ -x "$__temp_var__path_to_gpp_binary" ]      && [ -f "$__temp_var__path_to_ld_binary" ] && [ -r "$__temp_var__path_to_ld_binary" ] && [ -x "$__temp_var__path_to_ld_binary" ]
then
    export CXX="$__temp_var__path_to_gpp_binary"
    export CC="$__temp_var__path_to_gcc_binary"
    export LD="$__temp_var__path_to_ld_binary"
    
    # local override
    filepath="$VIRKSHOP_HOME/commands/g++"
    if [ -f "$filepath" ] && [ -r "$filepath" ] && [ -x "$filepath" ]
    then
        export CXX="$filepath"
    fi
    
    # local override
    filepath="$VIRKSHOP_HOME/commands/gcc"
    if [ -f "$filepath" ] && [ -r "$filepath" ] && [ -x "$filepath" ]
    then
        export CC="$filepath"
    fi
    unset filepath
fi

unset __temp_var__path_to_ld_binary
unset __temp_var__path_to_gpp_binary
unset __temp_var__path_to_gcc_binary
unset __temp_var__path_to_gcc 