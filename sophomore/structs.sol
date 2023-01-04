// SPDX-License-Identifier: MIT

contract Todolist {
  struct TodoItem {
    string text;
    bool completed;
  }

  TodoItem[] public todos;

  function createTodo(string memory _text) public {
    todos.push(TodoItem(_text, false));

    todos.push(TodoItem({text: _text, completed: false}));

    TodoItem memory todo;
    todo.text = _text;
    todo.completed = false;
    todos.push(todo);
  }

  function update(uint _index, string memory _text) public {
    todos[_index].text = _text;
  }

  function toggleCompleted(uint _index) public {
    todos[_index].completed = !todos[_index].completed;
  }
}