base = dberror.o storage_mgr.o 

test1 : $(base) test_assign1_1.o
	gcc -o test1 $(base) test_assign1_1.o
	rm *.o

test2 : $(base) test_assign1_2.o
	gcc -o test2 $(base) test_assign1_2.o
	rm *.o

dberror.o : dberror.c
	gcc -c dberror.c -I .

storage_mgr.o : storage_mgr.c
	gcc -c storage_mgr.c -I .

test_assign1_1.o : test_assign1_1.c
	gcc -c test_assign1_1.c -I .

test_assign1_2.o : test_assign1_2.c
	gcc -c test_assign1_2.c -I .

.PHONY : clean
clean :
	rm test1 test2
