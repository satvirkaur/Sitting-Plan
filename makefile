expand = expand_main.o 
sort_rollno = sort_main.o input.o
rm_duplicacy = non_duplicate_main.o input.o
subject = subject_main.o subject.o
strategyValidation = strategyVal.o strategyVal_main.o rollno.o

CC = g++									# compiler variable
DEBUG = -g									# debugging flag 
CFLAGS = -Wall -c $(DEBUG)							# linking flag
LFLAGS = -Wall $(DEBUG)					  	  # flag used in compiling and creating object files	

all : expand_compile sort_compile non_redundant_compile subject_compile subject_exe strategyValid_compile strategyValid_exe

expand_compile : $(expand)
	$(CC) $(LFLAGS) $(expand) -o expand_compile
	./expand_compile

#expand_run : 
	#./expand_compile

input.o : input.cpp input.h
	$(CC) $(CFLAGS) input.cpp

expand_main.o : expand_main.cpp input.in
	$(CC) $(CFLAGS) expand_main.cpp

#input.in : input.in
	#./expand_run
	
sort_compile : $(sort_rollno)
	$(CC) $(LFLAGS) $(sort_rollno) -o sort_compile
	./sort_compile

#sort_run : 
	#./sort_compile

sort_main.o : sort_main.cpp expand-rollno.out
	$(CC) $(CFLAGS) sort_main.cpp
#expand-rollno.out

non_redundant_compile : $(rm_duplicacy)
	$(CC) $(LFLAGS) $(rm_duplicacy) -o non_redundant_compile
	./non_redundant_compile

#non_redundant_run :
	#./non_redundant_c
	
non_duplicate_main.o : non_duplicate_main.cpp sort-rollno.out
	$(CC) $(CFLAGS) non_duplicate_main.cpp

subject_compile : $(subject)
	$(CC) $(LFLAGS) $(subject) -o subject_compile
	#./subject_compile
subject_exe : 
	./subject_compile

subject.o : subject.cpp subject.h non-redundant-rollno.out
	$(CC) $(CFLAGS) subject.cpp

subject_main.o : subject_main.cpp
	$(CC) $(CFLAGS) subject_main.cpp
	

strategyValid_compile : $(strategyValidation)
	$(CC) $(LFLAGS) $(strategyValidation) -o strategyValid_compile
	#./strategyValid_compile
	
strategyValid_exe :
	./strategyValid_compile
	
strategyVal.o : strategyVal.cpp strategyVal.h  	
	$(CC) $(CFLAGS) strategyVal.cpp
	
strategyVal_main.o : strategyVal_main.cpp
	$(CC) $(CFLAGS) strategyVal_main.cpp

rollno.o : rollno.cpp rollno.h 
	$(CC) $(CFLAGS) rollno.cpp


