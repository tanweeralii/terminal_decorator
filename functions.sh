#!/bin/bash

function A(){
	k=10
	for i in {0..10}
	do
        	for j in {0..20}
        	do
                	if [ $i -eq 5 ]
                	then
                        	if [ $j -eq 5 ] || [ $j -eq 7 ] || [ $j -eq 9 ] || [ $j -eq 11 ] || [ $j -eq 13 ] || [ $j -eq 15 ] 
                        	then echo -n '$';
                        	else echo -n ' '; 
                        	fi
                	else    
                        	if [ $j -eq $k ] || [ $((20-j)) -eq $k ]
                        	then echo -n '$';
                        	else echo -n ' ';
                        	fi
                	fi
        	done
        	k=$((k-1))
        	echo -e '';
	done

}
function B(){
	for i in {0..10}
	do
		for j in {0..10}
		do
			if [ $i -eq 0 ] || [ $i -eq 5 ] || [ $i -eq 10 ]
			then
				if [ $j -lt 9 ]
				then echo -n '_';
				else echo -n ' ';
				fi
			elif [ $i -eq 1 ] && [ $j -eq 9 ]
			then echo -n '\';
			elif ([ $i -eq 1 ] && [ $j -eq 0 ]) || ([ $i -eq 9 ] && [ $j -eq 0 ])
			then echo -n '|';
			elif [ $i -eq 9 ] && [ $j -eq 9 ]
			then echo -n '/';
			else
				if [ $j -eq 0 ] || [ $j -eq 10 ] && [ $i -le 8 ] && [ $i -gt 1 ]
				then
					echo -n '|';
				else echo -n ' ';
				fi
			fi
		done
		k=$((k-1))
		echo -e '';
	done
}
function C(){
	for i in {0..10}
	do
		for j in {0..10}
		do
			if [ $i -eq 0 ] || [ $i -eq 10 ]
			then 
				if [ $j -gt 1 ] && [ $j -lt 9 ]
				then echo -n '%';
				else echo -n ' ';
				fi
			elif [ $i -eq 2 ] || [ $i -eq 8 ] 
            then 
                if [ $j -eq 0 ] || [ $j -eq 10 ]
                then echo -n '%';
                else echo -n ' ';
                fi
            elif [ $i -gt 2 ] && [ $i -lt 8 ]
			then 
				if [ $j -eq 0 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif ([ $i -eq 1 ] && [ $j -eq 1 ]) || ([ $i -eq 9 ] && [ $j -eq 9 ])
			then 
				echo -n '/';
			elif ([ $j -eq 9 ] && [ $i -eq 1 ]) || ([ $i -eq 9 ] && [ $j -eq 1 ])
			then 
				echo -n '\';	
			
			else echo -n ' ';
			fi
		done
		echo -e '';
	done
}
function D(){
	for i in {0..10}
	do
		for j in {0..10}
		do
			if [ $i -eq 0 ]
			then 
				if [ $j -ge 1 ] && [ $j -le 7 ]
				then echo -n '%';
				else echo -n ' ';
				fi
			elif [ $i -eq 1 ]
			then 
				if [ $j -eq 0 ]
				then echo -n '|';
				elif [ $j -eq 8 ]
				then echo -n '\';
				else echo -n ' ';
				fi
			elif [ $i -eq 2 ]
			then
				if [ $j -eq 0 ]
				then echo -n '|';
				elif [ $j -eq 9 ]
				then echo -n '\';
				else echo -n ' ';
				fi
			elif [ $i -ge 3 ] && [ $i -le 7 ]
			then
				if [ $j -eq 0 ] || [ $j -eq 10 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif [ $i -eq 8 ]
			then 
				if [ $j -eq 0 ]
				then echo -n '|';
				elif [ $j -eq 9 ]
				then echo -n '/';
				else echo -n ' ';
				fi
			elif [ $i -eq 9 ]
			then
				if [ $j -eq 0 ]
                                then echo -n '|';       
                                elif [ $j -eq 8 ]
                                then echo -n '/';       
                                else echo -n ' ';       
				fi
			elif [ $i -eq 10 ]
                        then
                                if [ $j -ge 1 ] && [ $j -le 7 ]
                                then echo -n '%';
                                else echo -n ' ';
                                fi

			fi

		done
		echo -e '';
	done
}
function E(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 0 ] || [ $i -eq 10 ] || [ $i -eq 5 ]
			then
				if [ $j -ge 0 ] && [ $j -le 7 ]
				then echo -n '#';
				else echo -n ' ';
				fi
			else
				if [ $j -eq 0 ]
				then echo -n '#';
				else echo -n ' ';
				fi
			fi
                done
		echo -e '';
        done
}
function F(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 0 ] || [ $i -eq 5 ]
                        then
                                if [ $j -ge 0 ] && [ $j -le 7 ]
                                then echo -n '%';
                                else echo -n ' ';
                                fi
                        else
                                if [ $j -eq 0 ]
                                then echo -n '%';
                                else echo -n ' ';
                                fi
                        fi	
                done
		echo -e '';
        done
}
function G(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 0 ] || [ $i -eq 10 ]
                        then
                                if [ $j -gt 1 ] && [ $j -lt 9 ]
                                then echo -n '%';
                                else echo -n ' ';
                                fi
                        elif [ $i -eq 1 ]
                        then
                                if [ $j -eq 1 ]
                                then echo -n '/';
                                elif [ $j -eq 9 ]
                                then echo -n '\';
                                else echo -n ' ';
                                fi
                        elif [ $i -eq 2 ] || [ $i -eq 8 ]
                        then
                                if [ $j -eq 0 ] || [ $j -eq 10 ]
                                then echo -n '%';
                                else echo -n ' ';
                                fi
                        elif [ $i -eq 9 ]
                        then
                                if [ $j -eq 1 ]
                                then echo -n '\';
                                elif [ $j -eq 9 ]
                                then echo -n '/';
                                else echo -n ' ';
                                fi
                        elif [ $i -gt 2 ] && [ $i -lt 6 ]
                        then
                                if [ $j -eq 0 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
			elif [ $i -eq 7 ]
			then
				if [ $j -eq 10 ] || [ $j -eq 0 ]
				then echo -n '%';
				elif [ $j -eq 7 ]
				then echo -n '|';
				else echo -n ' ';
				fi
                        
			elif [ $i -eq 6 ]
			then
				if [ $j -ge 7 ]
				then echo -n '_';
				elif [ $j -eq 0 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			fi	
                done
		echo -e '';
        done
}
function H(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 5 ]
			then echo -n '=';
			else
				if [ $j -eq 0 ] || [ $j -eq 10 ] || [ $j -eq 1 ] || [ $j -eq 9 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			fi
                done
		echo -e '';
        done
}
function I(){
        for i in {0..10}
        do
                for j in {0..11}
                do
			if [ $i -eq 0 ] || [ $i -eq 10 ]
			then echo -n '%';
			else
				if [ $j -eq 5 ] || [ $j -eq 6 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			fi
                done
		echo -e '';
        done
}
function J(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 0 ]
			then echo -n '=';
			elif [ $i -ge 1 ] && [ $i -le 7 ]
			then 
				if [ $j -eq 5 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif [ $i -eq 8 ]
			then
				if [ $j -eq 4 ]
				then echo -n '/';
				elif [ $j -eq 0 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif [ $i -eq 9 ]
			then 
				if [ $j -eq 3 ]
				then echo -n '/';
				elif [ $j -eq 1 ]
				then echo -n '\';
				else echo -n ' ';
				fi
			elif [ $i -eq 10 ]
			then 
				if [ $j -eq 2 ]
				then echo -n '=';
				else echo -n ' ';
				fi
			fi
                done
		echo -e '';
        done
}
function K(){
        for i in {0..10}
        do
                for j in {0..6}
                do
			if [ $i -eq 0 ]
			then 
				if [ $j -eq 6 ]
				then echo -n '/';
				elif [ $j -eq 0 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif [ $i -eq 1 ]
                        then
                                if [ $j -eq 5 ]
                                then echo -n '/';               
                                elif [ $j -eq 0 ]
                                then echo -n '|';               
                                else echo -n ' ';                       
                                fi	
			elif [ $i -eq 2 ]
                        then
                                if [ $j -eq 4 ]
                                then echo -n '/';               
                                elif [ $j -eq 0 ]
                                then echo -n '|';               
                                else echo -n ' ';                       
				fi
			elif [ $i -eq 3 ]
                        then
                                if [ $j -eq 3 ]
                                then echo -n '/';               
                                elif [ $j -eq 0 ]
                                then echo -n '|';               
                                else echo -n ' ';                       
                                fi
			elif [ $i -eq 4 ]
                        then
                                if [ $j -eq 2 ]
                                then echo -n '/';
                                elif [ $j -eq 0 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
			elif [ $i -eq 5 ]
			then
				if [ $j -eq 0 ]
				then echo -n '|';
				elif [ $j -eq 1 ]
				then echo -n '=';
				else echo -n ' ';
				fi
			elif [ $i -eq 6 ]
			then 
				if [ $j -eq 2 ]
				then echo -n '\';
				elif [ $j -eq 0 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif [ $i -eq 7 ]
                        then
                                if [ $j -eq 3 ]
                                then echo -n '\';
                                elif [ $j -eq 0 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
			elif [ $i -eq 8 ]
                        then
                                if [ $j -eq 4 ]
                                then echo -n '\';
                                elif [ $j -eq 0 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
			elif [ $i -eq 9 ]
                        then
                                if [ $j -eq 5 ]
                                then echo -n '\';
                                elif [ $j -eq 0 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
			elif [ $i -eq 10 ]
                        then
                                if [ $j -eq 6 ]
                                then echo -n '\';
                                elif [ $j -eq 0 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
			fi
                done
		echo -e '';
        done
}
function L(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -ge 0 ] && [ $i -le 8 ]
			then 
				if [ $j -eq 0 ] || [ $j -eq 1 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			elif [ $i -eq 9 ] || [ $i -eq 10 ]
			then 
				if [ $j -eq 0 ]
				then echo -n '|';
				else echo -n '_';
				fi
			fi
                done
		echo -e '';
        done
}
function M(){
        for i in {0..10}
        do
                for j in {0..11}
                do
			if [ $j -eq 0 ] || [ $j -eq 11 ]
			then echo -n '|';
			elif ([ $j -eq 1 ] && [ $i -eq 0 ]) || ([ $j -eq 2 ] && [ $i -eq 1 ] ) || ([ $j -eq 3 ] && [ $i -eq 2 ]) || ([ $j -eq 4 ] && [ $i -eq 3 ]) || ([ $j -eq 5 ] && [ $i -eq 4 ])
			then echo -n '\';
			elif([ $j -eq 6 ] && [ $i -eq 4 ]) || ([ $j -eq 7 ] && [ $i -eq 3 ] ) || ([ $j -eq 8 ] && [ $i -eq 2 ]) || ([ $j -eq 9 ] && [ $i -eq 1 ]) || ([ $j -eq 10 ] && [ $i -eq 0 ])
			then echo -n '/';
			else echo -n ' ';
			fi
                done
		echo -e '';
        done
}
function N(){
        for i in {0..10}
        do
                for j in {0..12}
                do
			if [ $j -eq 0 ] || [ $j -eq 12 ]
                        then echo -n '|';
			elif ([ $j -eq 1 ] && [ $i -eq 0 ]) || ([ $j -eq 2 ] && [ $i -eq 1 ] ) || ([ $j -eq 3 ] && [ $i -eq 2 ]) || ([ $j -eq 4 ] && [ $i -eq 3 ]) || ([ $j -eq 5 ] && [ $i -eq 4 ]) || ([ $j -eq 6 ] && [ $i -eq 5 ]) || ([ $j -eq 7 ] && [ $i -eq 6 ]) || ([ $j -eq 8 ] && [ $i -eq 7 ]) || ([ $j -eq 9 ] && [ $i -eq 8 ]) || ([ $j -eq 10 ] && [ $i -eq 9 ]) || ([ $j -eq 11 ] && [ $i -eq 10 ])
                        then echo -n '\';
			else echo -n ' ';
			fi
                done
		echo -e '';
        done
}
function O(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if ([ $i -eq 0 ] && [ $j -ge 3 ] && [ $j -le 7 ]) || ([ $i -eq 10 ] && [ $j -ge 3 ] && [ $j -le 7 ])
			then echo -n '=';
			elif ([ $i -eq 1 ] && [ $j -eq 2 ]) || ([ $i -eq 2 ] && [ $j -eq 1 ]) || ([ $i -eq 9 ] && [ $j -eq 8 ]) || ([ $i -eq 8 ] && [ $j -eq 9 ])
			then echo -n '/';
			elif ([ $i -eq 1 ] && [ $j -eq 8 ]) || ([ $i -eq 2 ] && [ $j -eq 9 ]) || ([ $i -eq 9 ] && [ $j -eq 2 ]) || ([ $i -eq 8 ] && [ $j -eq 1 ])
			then echo -n '\';
			elif [ $i -ge 3 ] && [ $i -le 7 ]
			then
				if [ $j -eq 0 ] || [ $j -eq 10 ]
				then echo -n '|';
				else echo -n ' ';
				fi
			else echo -n ' ';
			fi
                done
		echo -e '';
        done
}
function P(){
        for i in {0..10}
        do
                for j in {0..6}
                do
			if [ $j -eq 0 ] || ([ $j -eq 6 ] && [ $i -eq 3 ])
			then echo -n '|';
			elif ([ $j -eq 1 ] && ([ $i -eq 0 ] || [ $i -eq 6 ])) || ([ $j -eq 2 ] && ([ $i -eq 0 ] || [ $i -eq 6 ])) || ([ $j -eq 3 ] && ([ $i -eq 0 ] || [ $i -eq 6 ]))
			then echo -n '=';
			elif ([ $j -eq 4 ] && [ $i -eq 1 ]) || ([ $j -eq 5 ] && [ $i -eq 2 ])
			then echo -n '\';
			elif ([ $j -eq 4 ] && [ $i -eq 5 ]) || ([ $j -eq 5 ] && [ $i -eq 4 ])
			then echo -n '/';
			else echo -n ' ';
			fi
			done
		echo -e '';
        done
}
function Q(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if ([ $i -eq 0 ] && [ $j -ge 3 ] && [ $j -le 7 ]) || ([ $i -eq 10 ] && [ $j -ge 3 ] && [ $j -le 7 ])
                        then echo -n '=';
                        elif ([ $i -eq 1 ] && [ $j -eq 2 ]) || ([ $i -eq 2 ] && [ $j -eq 1 ]) || ([ $i -eq 9 ] && [ $j -eq 8 ])
                        then echo -n '/';
                        elif ([ $i -eq 1 ] && [ $j -eq 8 ]) || ([ $i -eq 2 ] && [ $j -eq 9 ]) || ([ $i -eq 9 ] && [ $j -eq 2 ]) || ([ $i -eq 8 ] && [ $j -eq 1 ])
                        then echo -n '\';
			elif ([ $i -eq 8 ] && [ $j -eq 9 ]) || ([ $i -eq 7 ] && [ $j -eq 8 ]) || ([ $i -eq 9 ] && [ $j -eq 10 ])
			then echo -n '\';
                        elif [ $i -ge 3 ] && [ $i -le 7 ]
                        then
                                if [ $j -eq 0 ] || [ $j -eq 10 ]
                                then echo -n '|';
                                else echo -n ' ';
                                fi
                        else echo -n ' ';
                        fi
                done
		echo -e '';
        done
}
function R(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $j -eq 0 ] || ([ $j -eq 6 ] && [ $i -eq 3 ])
                        then echo -n '|';
                        elif ([ $j -eq 1 ] && ([ $i -eq 0 ] || [ $i -eq 6 ])) || ([ $j -eq 2 ] && ([ $i -eq 0 ] || [ $i -eq 6 ])) || ([ $j -eq 3 ] && ([ $i -eq 0 ] || [ $i -eq 6 ]))
                        then echo -n '=';
			elif ([ $j -eq 4 ] && [ $i -eq 1 ]) || ([ $j -eq 5 ] && [ $i -eq 2 ]) || ([ $i -eq 7 ] && [ $j -eq 1 ]) || ([ $i -eq 8 ] && [ $j -eq 2 ]) || ([ $i -eq 9 ] && [ $j -eq 3 ]) || ([ $i -eq 10 ] && [ $j -eq 4 ])
                        then echo -n '\';
                        elif ([ $j -eq 4 ] && [ $i -eq 5 ]) || ([ $j -eq 5 ] && [ $i -eq 4 ])
                        then echo -n '/';
                        else echo -n ' ';
                        fi
                done
		echo -e '';
        done
}
function S(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 0 ] || [ $i -eq 10 ] || [ $i -eq 5 ]
			then echo -n '=';
			elif ([ $j -eq 0 ] && ([ $i -ge 1 ] && [ $i -le 4 ]))
			then echo -n '|';
			elif ([ $j -eq 10 ] && ([ $i -ge 6 ] && [ $i -le 9 ]))
			then echo -n '|';
			else echo -n ' ';
			fi
                done
		echo -e '';
        done
}
function T(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq 0 ]
			then echo -n '=';
			elif [ $j -eq 5 ] && [ $i -ge 1 ]
			then echo -n '&';
			else echo -n ' ';
			fi
                done
		echo -e '';
        done
}
function U(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if ([ $i -le 7 ] && ([ $j -eq 0 ] || [ $j -eq 10 ]))
			then echo -n '&';
			elif ([ $j -eq 1 ] && [ $i -eq 8 ]) || ([ $j -eq 2 ] && [ $i -eq 9 ])
			then echo -n '\';
			elif ([ $j -eq 9 ] && [ $i -eq 8 ]) || ([ $j -eq 8 ] && [ $i -eq 9 ])
			then echo -n '/';
			elif [ $i -eq 10 ] && [ $j -ge 4 ] && [ $j -le 7 ]
			then echo -n '=';
			else echo -n ' ';
			fi
                done
		echo -e '';
        done
}
function V(){
        for i in {0..10}
        do
                for j in {0..19}
                do
			if [ $i -eq $j ]
			then echo -n '\';
			elif [ $j -eq $((19-i)) ]
			then echo -n '/';
			else echo -n ' ';
			fi	
                done
		echo -e '';
        done
}
function W(){
        for i in {0..10}
        do
                for j in {0..39}
                do
			if [ $i -eq $j ] || [ $j -eq $((20+i)) ]
                        then echo -n '\';
			elif [ $j -eq $((19-i)) ] || [ $j -eq $((39-i)) ]
                        then echo -n '/';
                        else echo -n ' ';
                        fi
                done
		echo -e '';
        done
}
function X(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq $j ]
                        then echo -n '\';
                        elif [ $j -eq $((10-i)) ]
                        then echo -n '/';
                        else echo -n ' ';
                        fi
                done
		echo -e '';
        done
}
function Y(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $i -eq $j ] && [ $i -le 4 ]
                        then echo -n '\';
                        elif [ $j -eq $((10-i)) ]
                        then echo -n '/';
                        else echo -n ' ';
                        fi
                done
		echo -e '';
        done
}
function Z(){
        for i in {0..10}
        do
                for j in {0..10}
                do
			if [ $j -eq $((10-i)) ] && [ $i != 0 ] && [ $i != 10 ]
                        then echo -n '/';
			elif [ $i -eq 0 ] || [ $i -eq 10 ]
			then echo -n '=';
			else echo -n ' ';
			fi

                done
		echo -e '';
   	done
}
