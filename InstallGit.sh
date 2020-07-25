echo --------------------------------------
Message="This script is to install the Git"
echo $Message
echo --------------------------------------
read -p "To install Git press (Y/y):" Condition

if [ $Condition == "Y" -o $Condition == "y" ]
then
   echo "Please Wait... Git is being installed"
   sudo yum install git -y
else
   echo "Unknow press"
fi
