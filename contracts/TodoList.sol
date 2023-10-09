pragma solidity ^0.8.21;

contract TodoList{

    uint public taskCount = 0;


    struct Task {
        uint id;
        string content;
        bool completed;
        
    }
    // uint bcs of the id
    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("New Tasks");

    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount,_content,false);

    }
    
    function updateStatus(uint _id) public{
        tasks[_id].completed = !tasks[_id].completed;
    }

    function deletetask(uint _id) public {
        delete(tasks[_id]);
    }

}
