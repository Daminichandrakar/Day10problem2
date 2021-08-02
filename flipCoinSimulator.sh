#! /bin/bash -x
#echo "Flip Coin Simulator"
function headtail(){
head=0
tail=0
while [ $head -le 21 -a $tail -le 21 ]
do
	randomValue=$(($RANDOM%2+1));
	if [ $randomValue -eq 1 ]
	then
        	((head++))
	else
        	((tail++))
	fi
done
}
headtail
echo $head
echo $tail
if [ $head -gt $tail ]
then
          if [ $(($head-$tail)) -gt 2 ]
          then
                       echo $head "win"

           else
                    headtail
           fi

elif [ $tail -gt $head ]
then
             if [ $(($tail-$head)) -gt 2 ]
           then
                        echo "$tail win"

            else
                     headtail
            fi


else
           if [ $head -eq $tail ]
                then
                         echo "tie"
                        headtal
                fi
fi

