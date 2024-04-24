all: raport_sensor_temp

raport_sensor_temp: main.o temp_functions.o
	gcc *.o -o raport_sensor_temp

main.o: main.c temp_functions.c temp_functions.h
	gcc -c -o main.o main.c

temp_functions.o: temp_functions.c temp_functions.h
	gcc -c -o temp_functions.o temp_functions.c

clean:
	del *.o
	del raport_sensor_temp.exe
