# TMPDIR fixes a pip issue, and also apparently some other issues
# export TMPDIR="$VIRKSHOP_HOME/tmp.cleanable"
export TMPDIR=/tmp # this fixes https://github.com/python/cpython/issues/93852 otherwise we would use the path above
mkdir -p "$TMPDIR"
export VIRTUAL_ENV="$PROJECT_FOLDER/.venv"
export PATH="$VIRKSHOP_HOME/.local/bin:$PATH"
if ! [ -d "$VIRTUAL_ENV" ]
then
    echo "        creating virtual env for python"
    # run the cleanup
    python -m venv "$VIRTUAL_ENV" && echo "        virtual env created"
fi

export PATH="$VIRTUAL_ENV/bin:$PATH"