document.addEventListener('DOMContentLoaded', () => {
  const grid = document.getElementById('grid');
  const gridSize = 10;
  const snakeSpeed = 200; // milliseconds

  // Create the initial grid
  for (let i = 0; i < gridSize; i++) {
    for (let j = 0; j < gridSize; j++) {
      const cell = document.createElement('div');
      cell.classList.add('cell');
      grid.appendChild(cell);
    }
  }

  // Initialize the snake's position and direction
  let snake = [
    { x: 5, y: 5 }, // Snake's head at (5, 5)
  ];
  let direction = '';

  // Function to update the snake's position
  const updateSnake = () => {
    const head = { ...snake[0] };
    switch (direction) {
      case 'up':
        head.y--;
        break;
      case 'down':
        head.y++;
        break;
      case 'left':
        head.x--;
        break;
      case 'right':
        head.x++;
        break;
    }

    snake.unshift(head);
    snake.pop();

    // Handle collision and game over
    //...

    // Update the grid
    const cells = document.querySelectorAll('.cell');
    cells.forEach(cell => {
      cell.classList.remove('snake');
    });
    snake.forEach(segment => {
      const index = segment.x + segment.y * gridSize;
      if (index >= 0 && index < gridSize * gridSize) {
        cells[index].classList.add('snake');
      }
    });

    // Call the updateSnake function recursively after a delay
    setTimeout(updateSnake, snakeSpeed);
  };

  // Handle keyboard input
  document.addEventListener('keydown', (event) => {
    const key = event.key;
    if (key === 'ArrowUp' && direction !== 'down') {
      direction = 'up';
    } else if (key === 'ArrowDown' && direction !== 'up') {
      direction = 'down';
    } else if (key === 'ArrowLeft' && direction !== 'right') {
      direction = 'left';
    } else if (key === 'ArrowRight' && direction !== 'left') {
      direction = 'right';
    }
  });

  // Start the game
  document.addEventListener('keyup', (event) => {
    if (event.code === 'Space') {
      updateSnake();
    }
  });
});
