export default [
	{
		path: "/",
		component: () => import("@/layouts/MainLayout.vue"),
		name: "home",
		children: [
			{
				path: "",
				component: () => import("@/pages/IndexPage.vue"),
			},
			{
				path: "hotels",
				component: () => import("@/pages/hotels/IndexPage.vue"),
				name: "hotels",
			},
			{
				path: "flights",
				component: () => import("@/pages/flights/IndexPage.vue"),
				name: "flights",
			},
		],
	},
	{
		path: "/:catchAll(.*)*",
		component: () => import("@/pages/NotFound.vue"),
	},
];
