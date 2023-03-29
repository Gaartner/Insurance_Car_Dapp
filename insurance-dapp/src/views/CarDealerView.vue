<template>
  <div class="car-dealer">
    <h1>Car Dealer page</h1>
    <p>{{ message }}</p>
    <div class="buttons">
      <button @click="setMessage('Button 1 clicked')">Button 1</button>
      <button @click="setMessage('Button 2 clicked')">Button 2</button>
      <button @click="setMessage('Button 3 clicked')">Button 3</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: 'This is a text'
    }
  },
  methods: {
    setMessage(newMessage) {
      this.message = newMessage;
    }
  }
}
</script>

<style>
.car-dealer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  color: white;
}
</style>