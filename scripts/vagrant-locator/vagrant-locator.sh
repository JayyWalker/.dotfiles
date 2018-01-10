SCRIPT_DIR=`dirname $0`
PHP_SCRIPT="${SCRIPT_DIR}/vagrant-locator.php"

v () {
    $PHP_SCRIPT $1 $2
}

vssh () {
    $(v ssh $1)
}

vu () {
    $(v up $1)
}

vp () {
    $(v provision $1)
}

vh () {
    $(v halt $1)
}

vgs () {
    $(v global-status)
}