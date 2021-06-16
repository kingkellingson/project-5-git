//
// Created by Kyle Ellingson on 6/14/21.
//

#ifndef PROJECT_0_GRAPH_H
#define PROJECT_0_GRAPH_H

#include <vector>
#include <set>
#include <map>
#include <stack>
#include <iterator>
#include <iostream>
#include <sstream>
#include <string>

using namespace std;

class Graph {
private:
    map<int, set<int>> myData;
    map<int, bool> visitedData;
    vector<int> myRules;
public:


    void createSet(int inputInt)
    {
        myData[inputInt]; //creates all the sets for adding the numbers to
        visitedData[inputInt]; //creates all the bools for adding the visited flags
        myRules.push_back(inputInt);
    }

    void inputToMap (int inputInt, int inputValueToSet) //takes a key and a value and inserts it into the set it maps to
    {
        set<int>& setToInput = myData.at(inputInt); //creates a Set by reference that the inputInt maps to
        setToInput.insert(inputValueToSet); //inserts the inputValueToSet into that Set
    }

    void setBools ()
    {
        for (map<int, bool>::iterator it = visitedData.begin(); it != visitedData.end(); ++it) //for every value in the set
        {
            it->second = true;
        }
    }

    void checkBools ()
    {
        for (map<int, bool>::iterator it = visitedData.begin(); it != visitedData.end(); ++it) //for every value in the set
        {
            if (it->second == true) //if the number is marked
            {
                cout << endl << it->first << " was marked!";
            }
            else
            {
                cout << endl << it->first << " was not marked!";
            }
        }
    }

    void clearBools ()
    {
        for (map<int, bool>::iterator it = visitedData.begin(); it != visitedData.end(); ++it) //for every value in the set
        {
            it->second = false;
        }
    }

    stack<int> DepthFirstSearchForestPostOrder ()
    {
        clearBools();

        stack<int> topologicalSort;
        //for (map<int, bool>::iterator it = visitedData.begin(); it != visitedData.end(); ++it) //for every value in the set
        for (size_t i = 0; i < myRules.size(); ++i) //for every value in the set
        {
            int numberToSearch = myRules.at(i);
            if (!visitedData.at(numberToSearch)) //if the vertex at that value has not been visited
            {
                DepthFirstSearch(numberToSearch, topologicalSort);
            }
        }
        return topologicalSort;
    }

    void DepthFirstSearch (int value, stack<int>& myStack)
    {
        visitedData.at(value) = true; //mark that value
        cout << endl << value << " was marked";
        set<int>& setToSearch = myData.at(value); //get the set at that value
        cout << endl << "getting the set at " << value << ", which is: ";
        for (set<int>::iterator it = setToSearch.begin(); it != setToSearch.end(); ++it) //search it in order -- for every value in that set
        {
            cout << *it << ";";
        }
        for (set<int>::iterator it = setToSearch.begin(); it != setToSearch.end(); ++it) //search it in order -- for every value in that set
        {
            if (!visitedData.at(*it)) //if the value there is not marked
            {
                cout << endl << "the value " << *it <<" is not marked, so we are visiting its children.";
                DepthFirstSearch(*it, myStack); //
            }
            else
            {
                cout << endl << "the value " << *it <<" IS marked, so we are moving to the next (if any)";
            }
        }
        cout << endl << "***finished function, so we are pushing " << value << " onto the stack";
        myStack.push(value);
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
