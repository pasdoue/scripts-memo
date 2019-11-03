#!/bin/bash


variable=AZERTYUIOPAZERTYUIOP

echo -e "variable : $variable\n"
echo "=================================="
echo "=           With #               ="
echo "=================================="

echo -e "\${variable#AZE} : \t" ${variable#AZE}
echo -e "\${variable#*Y} : \t" ${variable#*Y}
echo -e "\${variable#*[CDEF]} : \t" ${variable#*[CDEF]}
echo -e "\${variable#*} : \t" ${variable#*}

echo "=================================="
echo "=           With ##              ="
echo "=================================="

echo -e "\${variable##AZE} : \t" ${variable##AZE}
echo -e "\${variable##*Y} : \t" ${variable##*Y}
echo -e "\${variable##*[CDEF]} : \t" ${variable##*[CDEF]}
echo -e "\${variable##*} : \t" ${variable##*}

echo "=================================="
echo "=           With %               ="
echo "=================================="

echo -e "\${variable%AZE} : \t" ${variable%AZE}
echo -e "\${variable%*Y} : \t" ${variable%Y*}
echo -e "\${variable%*[CDEF]} : \t" ${variable%[CDEF]*}
echo -e "\${variable%*} : \t" ${variable%*}

echo "=================================="
echo "=           With %%              ="
echo "=================================="

echo -e "\${variable%%AZE} : \t" ${variable%%AZE}
echo -e "\${variable%%*Y} : \t" ${variable%%Y*}
echo -e "\${variable%%*[CDEF]} : \t" ${variable%%[CDEF]*}
echo -e "\${variable%%*} : \t" ${variable%%*}

echo ""
echo "String length :"
echo -e "\${#variable} : \t" ${#variable}