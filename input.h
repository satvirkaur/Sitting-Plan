#include <iostream>
#include <fstream>
#include <algorithm> 
using namespace std;

const int min_size = 30;
const int max_size = 200;

class input
{
protected:

	// Room variables
	string room_no[min_size], subject_code[min_size];//, branch_name[min_size]; 
	int rows[min_size], cols[min_size], t_rooms, no_subject[min_size];

	// Roll Number variables
	int t_branches, roll_no[min_size][max_size];
	int roll_size[min_size], rno[max_size];
	string branch_name[min_size], rollno[max_size];
	char input_file[15];
	
	// File variable
	ifstream infile;	// Read contents of file
	ofstream outfile;	// Write into file
	fstream file;
	
	int i,j,k;
	
public:
	void sort_rollno();
	void rm_duplicate_rollno();
};
