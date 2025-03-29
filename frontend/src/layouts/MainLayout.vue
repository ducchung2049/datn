<template>

	<MainHeader />
	<main class="pt-40">
		<router-view></router-view>
	</main>
	<MainFooter />


</template>

<script setup>
import MainHeader from '../components/MainLayout/MainHeader.vue';
import MainFooter from '../components/MainLayout/MainFooter.vue';
</script>

<style></style>
