import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import CustomerView from '../views/CustomerView.vue'
import InsuranceView from '../views/InsuranceView.vue'
import CarDealerView from '../views/CarDealerView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/customer',
    name: 'customer',
    component: CustomerView
  },
  {
    path: '/insurance',
    name: 'insurance',
    component: InsuranceView
  },
  {
    path: '/car_dealer',
    name: 'car_dealer',
    component: CarDealerView
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
