rm -rf /opt/ANDRAX/bin/httpx

make

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Make... PASS!"
else
  # houston we have a problem
  exit 1
fi

strip httpx

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Strip... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf httpx /opt/ANDRAX/bin/httpx

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi
