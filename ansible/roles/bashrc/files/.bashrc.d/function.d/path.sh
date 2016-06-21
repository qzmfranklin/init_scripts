function d()
{
   let count=0
   for items in `dirs`
   do
      echo $count $items
      let count=$((count+1));
   done
}

function p()
{
   if (($# > 0)); then
      pushd +$1 > /dev/null
   else
      pushd > /dev/null
   fi
   d
}

