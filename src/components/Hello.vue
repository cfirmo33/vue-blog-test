<template>
  <div class="hello">
    <posts></posts>
  </div>
</template>

<script>
const createPosts = id => () => import('../postjs').then(m => m.default(id))

export default {
  name: 'hello',
  components: {
    'posts': createPosts("posts")
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
