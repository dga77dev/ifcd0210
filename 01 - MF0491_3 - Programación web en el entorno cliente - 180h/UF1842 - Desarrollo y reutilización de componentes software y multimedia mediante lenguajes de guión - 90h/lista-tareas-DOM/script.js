document.addEventListener('DOMContentLoaded', function() {
  var todoForm = document.getElementById('todoForm');
  var todoInput = document.getElementById('todoInput');
  var todoList = document.getElementById('todoList');

  todoForm.addEventListener('submit', function(event) {
      event.preventDefault();
      var todoText = todoInput.value.trim();
      if (todoText !== '') {
          var listItem = document.createElement('li');
          listItem.textContent = todoText;
          todoList.appendChild(listItem);
          todoInput.value = '';
      }
  });
});
