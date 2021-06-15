//
// Created by Kyle Ellingson on 6/14/21.
//

#ifndef PROJECT_0_GRAPH_H
#define PROJECT_0_GRAPH_H

#include <vector>
#include <set>
#include <map>
#include <iterator>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

class Graph {
private:
    map<int, set<int>> myData;
public:

    void createSet(int inputInt)
    {
        myData[inputInt];
    }

    void inputToMap (int inputInt, int inputValueToSet) //takes a key and a value and inserts it into the set it maps to
    {
        set<int>& setToInput = myData.at(inputInt); //creates a Set by reference that the inputInt maps to
        setToInput.insert(inputValueToSet); //inserts the inputValueToSet into that Set
    }

    void toString ()
    {
        stringstream ss;
        for (map<int, set<int>>::iterator it = myData.begin() ; it != myData.end(); ++it) //for all the values in the graph
        {
            int test1 = it->first;
            cout << "R" << test1 << ":"; //Print out the current rule

            set<int>& mySet = it->second;

            for (set<int>::iterator setit = mySet.begin(); setit != mySet.end(); ++setit) //for all the values in the set
            //for (int i : it->second) //for all the values in the set
            {
                if (setit != mySet.begin()) //for comma
                {
                    cout << ",";
                }
                cout << "R" << *setit;//print out the dependencies
            }
            cout << endl;
        }
    }

};




#endif //PROJECT_0_GRAPH_H
