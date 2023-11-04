#!/bin/bash
# cars.sh
# Kalin Richardson

echo "Menu:"
    echo "1. Enter a new car"
    echo "2. Display the list of cars"
    echo "3. Quit"
    echo "Please enter your choice (1/2/3): "
    read -r number

while [ "$number" -ne 3 ]; do
  case $number in
    1)
      echo "Enter the Year of the car:"
      read -r year
      echo "Enter the Make of the car:"
      read -r make
      echo "Enter the Model of the car:"
      read -r model

      # Combine values into a single string with colons
      car_info="$year:$make:$model"

      # Append to My_old_cars file
      echo "$car_info" >> My_old_cars
      ;;
    2)
        sort -t: -k1n My_old_cars
      ;;
    3)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid choice. Please enter 1, 2, or 3."
      ;;
  esac 
  echo "Menu:"
    echo "1. Enter a new car"
    echo "2. Display the list of cars"
    echo "3. Quit"
    echo "Please enter your choice (1/2/3): "
    read -r number
done


