<template>
  <div class="container">
    <div class="userinfo" @click="login">
      <img :src="userinfo.avatarUrl" alt>
      <p open-type="getUserInfo" lang="zh_CN" @getuserinfo="doLogin">{{userinfo.nickName}}</p>
    </div>
    <year-progress></year-progress>
    <button v-if="userinfo.openId" @click="scanBook" class="btn">添加图书</button>
    <button
      v-if="!userinfo.openId"
      open-type="getUserInfo"
      lang="zh_CN"
      @getuserinfo="doLogin"
      class="btn"
    >点击登陆</button>
  </div>
</template>

<script>
import { showSuccess, post, showModal } from '@/util'
import qcloud from 'wafer2-client-sdk'
import config from '@/config'
import YearProgress from '@/components/YearProgress.vue'
export default {
  components: { YearProgress },
  data () {
    return {
      userinfo: {
        avatarUrl: '../../../static/img/unlogin.png',
        nickName: '点击登陆'
      }
    }
  },
  methods: {
    async addBook (isbn) {
      const res = await post('/weapp/addbook', {
        isbn,
        openid: this.userinfo.openId
      })
      showModal('添加成功！', `${res.title}添加成功`)
    },
    scanBook () {
      wx.scanCode({
        success: res => {
          if (res.result) {
            this.addBook(res.result)
          }
        }
      })
    },
    doLogin () {
      console.log('你好')
      let user = wx.getStorageSync('userinfo')
      let self = this
      if (!user) {
        qcloud.setLoginUrl(config.loginUrl)
        qcloud.login({
          success: userinfo => {
            qcloud.request({
              url: config.userUrl,
              login: true,
              success (userRes) {
                showSuccess('登陆成功！')
                wx.setStorageSync('userinfo', userRes.data.data)
                self.userinfo = userRes.data.data
              }
            })
          },
          fail: err => {
            console.log('登陆失败', err)
          }
        })
      }
    }
  },
  onShow () {
    let userinfo = wx.getStorageSync('userinfo')
    if (userinfo) {
      this.userinfo = userinfo
    }
  }
}
</script>

<style lang='scss'>
.container {
  padding: 0 30rpx;
}
.userinfo {
  margin-top: 100rpx;
  text-align: center;
  img {
    width: 150rpx;
    height: 150rpx;
    margin: 20rpx;
    border-radius: 50%;
  }
}
</style>