BMRC=$HOME/.bmrc
touch $BMRC

bmls() {
  cat $BMRC | sort -n
}

bmvi() {
  # open BMRC with EDITOR.
  ${EDITOR:-vi} $BMRC
}

bmadd() {
  local bmdir=$PWD
  local newid=$1

  if __bm_path_list | grep -F -x "$bmdir" > /dev/null; then
    echo "$bmdir is already in bm list" 1>&2
    return 2
  fi

  if [ -n "$newid" ]; then
    if __bm_id_list | grep -F -x "$newid" > /dev/null; then
      echo "$newid is already used as bm id" 1>&2
      return 3
    fi
  fi

  if [ -z $newid ]; then
    local maxid
    maxid=$(__bm_id_list | grep '^[0-9][0-9]*$' | sort -n -r | head -1)
    if [ -n "$maxid" ] && [ "$maxid" -ge 1 ]; then
      newid=$((maxid + 1))
    else
      newid=1
    fi
  fi

  echo "$newid|$bmdir" >> $BMRC
}

bm() {
  local bmid=$1
  if [ -z "$bmid" ]; then
    bmls
    return
  fi

  local bmdir=$(__bm_get "$bmid")
  if [ -z "$bmdir" ]; then
    echo "$bmid is not in bm list" 1>&2
    return 1
  fi

  cd "$bmdir"
}

__bm_get() {
  escaped_bmid=$(echo "$1" | sed -e 's/[^a-zA-Z0-9<>]/\\&/g')
  cat $BMRC | grep -E "^${escaped_bmid}\\|" | cut -d '|' -f 2 | head -n 1
}

__bm_path_list() {
  cat $BMRC | cut -d '|' -f 2
}

__bm_id_list() {
  cat $BMRC | cut -d '|' -f 1
}

