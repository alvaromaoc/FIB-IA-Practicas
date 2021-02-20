#include <iostream>
#include <vector>
#include <random>
#include <fstream>
#include <time.h>
#include <stdlib.h>
#include <string>
using namespace std;

int main() {
	srand(time(NULL));
	ofstream file;
	file.open("generated.pddl");
	file << "(define (problem extensio3) (:domain pddl)\n";
	int numContents	= 3+rand()%(31-3);
	int numDays		= numContents/3 + 1;
	vector<int> predecessors(numContents,0);
	vector<int> predecessed(numContents,false);
	string line = "\t(:objects";
	for (int i = 1;i <= numContents;++i){
		line += " object" + to_string(i);
	}
	line += " - content\n";
	file << line;
	line = "\t\t\t";
	for (int i = 1;i <= numDays;++i){
		line += " d" + to_string(i);
	}
	line += " - day)\n";
	file << line;

	file << "\t(:init\n\n";

	for (int i = 0;i < numContents/2;++i){
		int father 	= rand()%numContents;
		int son		= rand()%numContents;
		while (son == father or predecessed[son]) son = rand()%numContents;
		file << "\t\t(predecessor object" + to_string(son + 1) + " object" + to_string(father + 1) + ")\n";
		predecessors[father] += 1;
		predecessed[son] = true;
	}

	file << "\n";

	for (int i = 0;i < numContents;++i){
		file << "\t\t(= (predecessors object" + to_string(i+1) + ") " + to_string(predecessors[i]) + ")\n";
	}

	file << "\n";

	for (int i = 0;i < numContents;++i){
		file << "\t\t(= (lastDayUsed object" + to_string(i+1) + ") 0)\n";
	}

	file << "\n";

	for (int i = 0;i < numContents;++i){
		file << "\t\t(= (predecessorsWatched object" + to_string(i+1) + ") 0)\n";
	}

	file << "\n";

	for (int i = 0;i < numDays;++i){
		file << "\t\t(= (numDay d" + to_string(i+1) + ") " + to_string(i+1) + ")\n";
	}

	file << "\n";

	for (int i = 0;i < numDays;++i){
		file << "\t\t(= (dayCapacity d" + to_string(i+1) + ") 0)\n";
	}

	file << "\n";

	int goals = 1+rand()%(numContents/4-1);

	for (int i = 0;i < goals;++i){
		int goal = 1+rand()%(numContents-1);
		file << "\t\t(toWatch object" + to_string(goal) + ")\n";
	}

	file << "\n\t)\n\n";
	file << "\t(:goal (and (forall (?x - content) (not (toWatch ?x))))))\n";
}
