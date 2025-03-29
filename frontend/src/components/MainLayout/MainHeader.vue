<script setup>

</script>

<template>
	<header class="fixed top-0 z-40 w-full transition-all duration-300 shadow-none py-8">
		<div class="py-0">
			<div class="container mx-auto max-w-screen-xl md:max-w-screen-md flex items-center justify-between px-4">
				<router-link class="flex items-center text-black dark:text-red-500 text-2xl font-semibold gap-4" :to="{name: 'home'}"><img alt="logo" loading="lazy" width="160" height="50" decoding="async" data-nimg="1" style="color: transparent; width: auto; height: auto; --darkreader-inline-color: transparent" src="/favicon.ico" data-darkreader-inline-color=""/>Traveloke</router-link>
				<div class="flex items-center gap-4">
					<a class="block text-primary bg-primary/15 hover:text-red-500 hover:bg-primary font-medium text-lg py-4 px-8 rounded-full" href="#">Sign In</a><a class="block bg-primary text-red-500 hover:bg-primary/15 hover:text-primary font-medium text-lg py-4 px-8 rounded-full" href="#">Sign Up</a>
					<button class="block p-2 rounded-lg" aria-label="Toggle mobile menu"><span class="block w-6 h-0.5 bg-white"></span><span class="block w-6 h-0.5 bg-white mt-1.5"></span><span class="block w-6 h-0.5 bg-white mt-1.5"></span></button>
				</div>
			</div>
		</div>
		<div>
			<nav class="flex flex-grow items-center gap-8 justify-center">
				<div class="relative">
					<router-link class="text-xl flex font-medium duration-300 text-black/50 dark:text-red-500/50 hover:text-primary dark:hover:text-primary" :to="{name: 'hotels'}">Hotels</router-link>
				</div>
				<div class="relative">
					<router-link class="text-xl flex font-medium duration-300 text-black/50 dark:text-red-500/50 hover:text-primary dark:hover:text-primary" :to="{name: 'flights'}">Flights</router-link>
				</div>
			</nav>
		</div>
	</header>
</template>

<style scoped>

</style>
