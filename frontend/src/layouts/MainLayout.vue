<template>
    <q-layout view="hHh lpR fFf">
        <q-header
            reveal
            elevated
            class="bg-primary text-white"
            height-hint="98"
        >
            <q-toolbar>
                <q-toolbar-title>
                    <q-avatar>
                        <img
                            src="https://d1785e74lyxkqq.cloudfront.net/_next/static/v3/f/fbab4f587da2242fbe9858fe3e5ba717.svg"
                        />
                    </q-avatar>
                    Traveloke
                </q-toolbar-title>
            </q-toolbar>

            <q-tabs>
                <q-route-tab to="/" label="Home" />
                <q-route-tab to="/hotels" label="Hotels" />
                <q-route-tab to="/flights" label="Flights" />
            </q-tabs>
        </q-header>

        <q-page-container>
            <router-view />
        </q-page-container>

        <q-footer reveal elevated class="bg-grey-8 text-white">
            <q-toolbar>
                <q-toolbar-title>
                    <q-avatar>
                        <img
                            src="https://d1785e74lyxkqq.cloudfront.net/_next/static/v3/f/fbab4f587da2242fbe9858fe3e5ba717.svg"
                        />
                    </q-avatar>
                    Traveloke
                </q-toolbar-title>
            </q-toolbar>
        </q-footer>
    </q-layout>
</template>

<script setup></script>
