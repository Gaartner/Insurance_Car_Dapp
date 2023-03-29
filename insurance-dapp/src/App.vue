<!-- <template>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/customer">Customer</router-link> |
    <router-link to="/insurance">Insurance</router-link> |
    <router-link to="/car_dealer">Car Dealer</router-link>
  </nav>
  <router-view/>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style> -->

<!-- <template>
  <header class="navbar">
    <div class="navbar-container">
      <router-link to="/" class="navbar-logo">
        <img src="./assets/logo-color.png" alt="Insurance Dapp Logo">
      </router-link>
      <nav class="navbar-menu">
        <router-link to="/" class="navbar-item">Home</router-link>
        <router-link to="/customer" class="navbar-item">Customer</router-link>
        <router-link to="/insurance" class="navbar-item">Insurance</router-link>
        <router-link to="/car_dealer" class="navbar-item">Car Dealer</router-link>
      </nav>
    </div>
  </header>
  <router-view/>
</template>

<style>
.navbar {
  background-color: #0C1D36;
  color: #fff;
  padding: 1rem;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 999;
}

.navbar-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
}

.navbar-logo {
  display: flex;
  align-items: center;
}

.navbar-logo img {
  width: 120px;
}

.navbar-menu {
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

.navbar-item {
  margin-right: 1rem;
  color: #fff;
  text-decoration: none;
  font-weight: bold;
}

.router-link-active {
  color: #42b983;
}
</style> -->

<template>
  <div>
    <header class="navbar">
      <div class="navbar-container">
        <router-link to="/" class="navbar-logo">
          <img src="./assets/logo-color.png" alt="Insurance Dapp Logo">
        </router-link>
        <nav class="navbar-menu">
          <router-link to="/" class="navbar-item">Home</router-link>
          <router-link to="/customer" class="navbar-item">Customer</router-link>
          <router-link to="/insurance" class="navbar-item">Insurance</router-link>
          <router-link to="/car_dealer" class="navbar-item">Car Dealer</router-link>
        </nav>
      </div>
    </header>
    <main class="site-main">
      <router-view/>
    </main>
    <footer class="site-footer">
      <p>&copy; 2023 BlockInsure, Digital Finance Project.<br>Alexandre Martins | Amaury Lin | Jean-Ludovic Kugblenu | Kevin Gov | Sofiane El Anzi | Thierry Zhang</p>
    </footer>
  </div>
</template>

<style>
@font-face {
  font-family: 'MyCustomFont';
  src: url('./assets/fonts/Audiowide_Regular.ttf') format('truetype');
  font-weight: normal;
  font-style: normal;
}

html,
body {
  height: 100%;
  margin: 0;
  font-family: 'MyCustomFont', sans-serif;
  background-color: #193F76;
}

.site-main {
  margin-bottom: 60px; /* Height of the footer */
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
}

.site-footer {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  height: 60px; /* Height of the footer */
  background-color: #0C1D36;
  color: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
}

.site-footer p {
  margin: 0;
  text-align: center;
}

.navbar {
  background-color: #0C1D36;
  color: #fff;
  padding: 1rem;
}

.navbar-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
}

.navbar-logo {
  display: flex;
  align-items: center;
}

.navbar-logo img {
  width: 120px;
}

.navbar-menu {
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

.navbar-item {
  margin-right: 1rem;
  color: #fff;
  text-decoration: none;
  font-weight: bold;
}

.router-link-active {
  color: #F9CC0B;
}

.buttons {
  margin-top: 20px;
}

button {
  font-family: 'MyCustomFont', sans-serif;
  margin-right: 10px;
  background-color: #0C1D36;
  color: #F9CC0B;
  border: none;
  outline: none;
  padding: 15px;
}
</style>
