<template>
    <div id="app">
        <input type="text" v-model="name">
        <br>
        <input type="text" v-model="slogan">
        <br>
        <input type="text" v-model="height">
        <br>
        <input type="text" v-model="weight">
        <br>
        <p>{{QRCode}}</p>
        <br>
        <qrcode :value='QRCode' :options="{ size: 205, padding: 8, level: 'H' }" tag="img"></qrcode>
    </div>
</template>

<script>
    export default {
        data: function () {
            return {
                name: "",
                slogan: "你真是个天才",
                height: 0,
                weight: 0,
            }
        },
        computed: {
            QRCode: function () {
                return "http://192.168.1.22:3000/devices/1234567890/?" + Object.keys(this.$data).map(k => `${encodeURIComponent(k)}=${encodeURIComponent(this.$data[k])}`).join('&');;
            },
        }
    }
</script>

<style scoped>
    p {
        font-size: 2em;
        text-align: center;
    }
</style>
