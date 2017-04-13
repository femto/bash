#NOTE - this script does not work!
#!/bin/sh
awk '{print $c, -12, X--}' c=${1:-1}
echo $c