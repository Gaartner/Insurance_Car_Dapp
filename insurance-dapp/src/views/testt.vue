<template>
  <div>
    <h1>Customers</h1>
    <ul>
      <li v-for="customer in customers" :key="customer.id">{{ customer.name }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      customers: [],
    };
  },
  mounted() {
    this.loadCustomers();
  },
  methods: {
    async loadCustomers() {
      const response = await fetch('/api/customers');
      const data = await response.json();
      this.customers = data;
    },
  },
};
</script>
