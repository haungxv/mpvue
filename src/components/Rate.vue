<template>
  <div class="rate">
    <span>☆☆☆☆☆</span>
    <div class="hollow" :style="style">★★★★★</div>
  </div>
</template>

<script>
export default {
  props: {
    value: { type: [Number, String], default: '0' }
  },
  computed: {
    style () {
      return `width:${this.value / 3}em`
    }
  }
}
</script>

<style lang='scss'>
.rate {
  position: relative;
  display: inline-block;
  .hollow {
    position: absolute;
    display: inline-block;
    top: 0;
    left: 0;
    width: 2em;
    overflow: hidden;
  }
}
</style>


