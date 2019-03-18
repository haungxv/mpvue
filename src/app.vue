<script>
export default {
  async created () {
    // this.doLogin();
  },
  methods: {
    // doLogin: function(e) {
    //   let user = wx.getStorageSync("userinfo");
    //   if (!user) {
    //     qcloud.setLoginUrl(config.loginUrl);
    //     qcloud.login({
    //       success: function(userinfo) {
    //         console.log("登陆成功", userinfo);
    //         showSuccess("登陆成功！");
    //         wx.setStorageSync("userinfo", userinfo);
    //       },
    //       fail: function(err) {
    //         console.log("登陆失败", err);
    //       }
    //     });
    //   }
    // }
  }
}
</script>

<style>
.text-footer {
  text-align: center;
  font-size: 12px;
  margin-bottom: 5px;
}
.text-primary {
  color: #ea5a49;
}
.page-title {
  padding-left: 20px;
  background: #eee;
  line-height: 40px;
  font-size: 14px;
}
.right {
  float: right;
}
.btn {
  color: white;
  background-color: #ea5a49;
  margin-bottom: 10px;
  padding-left: 15px;
  padding-right: 15px;
  border-radius: 2px;
  font-size: 16px;
  line-height: 40px;
  height: 40px;
  width: 100%;
}
.btn:active {
  background-color: #fa5a49;
}
</style>  