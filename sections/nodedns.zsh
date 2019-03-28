#
# Time
#
# Current time

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_NODEDNS_SHOW="${SPACESHIP_NODEDNS_SHOW=true}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

spaceship_nodedns() {
  [[ $SPACESHIP_NODEDNS_SHOW == false ]] && return

  local nodedns="$(nodedns status | awk -F: 'NR==6{print $2}')"


  spaceship::section \
    "$SPACESHIP_TIME_COLOR" \
    " " \
    "$nodedns" \
    " "
}
