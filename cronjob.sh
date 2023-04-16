day=$(date +%u)

if [[ $day == 6 || $day == 7 ]]; then
  echo "今天是周末"
  /usr/bin/python3 /path/to/get_ec.py
  /usr/bin/python3 /path/to/create_golden.py
  /usr/bin/python3 /path/to/get_ept.py
  /usr/bin/python3 /path/to/get_validation.py
elif [ $day == 'xxx' ]; then
else
  echo "今天不是周末"
  /usr/bin/python3 /path/to/get_wph.py
  /usr/bin/python3 /path/to/get_oppor.py
fi