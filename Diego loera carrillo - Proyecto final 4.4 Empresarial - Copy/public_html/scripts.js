const apiUrl = 'https://fakestoreapi.com/users';

async function getUserInfo() {
  try {
    const response = await fetch(apiUrl);
    const users = await response.json();
    const userList = document.getElementById('users-list');
    userList.innerHTML = '';

    users.forEach(user => {
      const userItem = document.createElement('div');
      userItem.classList.add('user');

      userItem.innerHTML = `
        <h3>User ID: ${user.id}</h3>
        <p>Telefono: ${user.phone}</p>
        <p>Email: ${user.email}</p>
        <p>Nombre : ${user.username}</p>
      `;
      userList.appendChild(userItem);
    });
  } catch (error) {
    console.error('Error al obtener información de los usuarios:', error);
  }
}

window.onload = getUserInfo;
