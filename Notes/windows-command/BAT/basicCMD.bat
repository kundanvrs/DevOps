@echo off 

set message=Hello World 
echo %message%
************************
echo %1 
echo %2 
echo %3
*********************************
set list = 1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))

**************************
set a[0] = 1 
set a[1] = 2 
set a[2] = 3 
echo The first element of the array is %a[0]% 
echo The second element of the array is %a[1]% 
Set a[2] = 4 
echo The third element of the array is %a[2]%
******************************************
setlocal enabledelayedexpansion 
set topic[0] = comments 
set topic[1] = variables 
set topic[2] = Arrays 
set topic[3] = Decision making 
set topic[4] = Time and date 
set topic[5] = Operators 

for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]! 
)
**************************************
set Arr[0] = 1 
set Arr[1] = 2 
set Arr[2] = 3 
set Arr[3] = 4 
set "x = 0" 
:SymLoop 

if defined Arr[%x%] ( 
   call echo %%Arr[%x%]%% 
   set /a "x+=1"
   GOTO :SymLoop 
)
echo "The length of the array is" %x%
**************************************
