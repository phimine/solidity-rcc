// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// imports the struct above
import "./14.2.1.StructTodo.sol";

/**
 * @title You can define your own type by creating a struct.
 * They are useful for grouping together related data.
 * @author Carl Fu
 */
contract Todos {
    Todo[] public todos;

    function get(
        uint256 _index
    ) public view returns (string memory text, bool completed) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint256 _index) public view {
        Todo memory todo = todos[_index];
        todo.completed = !todo.completed;
    }

    function updateText(uint256 _index, string calldata _text) public view {
        Todo memory todo = todos[_index];
        todo.text = _text;
    }

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, false));

        // key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct and then update it
        Todo memory todo;
        todo.text = _text; // todo.completed = false; -- default bool
        todos.push(todo);
    }
}
